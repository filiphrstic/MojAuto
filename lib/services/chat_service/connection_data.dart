import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:rocket_chat_connector_flutter/models/user.dart';
import 'package:rocket_chat_connector_flutter/web_socket/web_socket_service.dart';
import 'package:rxdart/rxdart.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

import 'chat_message.dart';

class ConnectionData {
  final User user;
  final WebSocketChannel webSocketChannel;
  final Stream<ChatMessage> stream;
  final WebSocketService webSocketService;
  final BehaviorSubject<List<types.Message>> messages = BehaviorSubject<List<types.Message>>.seeded([]);

  String? roomId;

  ConnectionData(this.user, this.webSocketChannel, this.stream, this.webSocketService) {
    stream.listen((event) {
      if (event.type == ChatMessageTypeEnum.text) {
        messages.value.add(event.message!);
      }

      if (event.json['msg'] == 'result' && event.json['result'] is Map && event.json['result']['messages'] is List) {
        //updateMessages(List<Map<String, dynamic>>.from(event.json['result']?['messages']));
      }

      if (event.json['msg'] == 'changed' &&
          event.json['collection'] == 'stream-notify-user' &&
          event.json['fields'] is Map &&
          event.json['fields']['args'] is List) {
        addNotifications(List<Map<String, dynamic>>.from(event.json['fields']['args']));
      }
    });
  }

  void updateMessages(List<Map<String, dynamic>> json, {bool overwrite = false}) {
    messages.add([
      ...json.map(
        (e) => types.Message.fromJson(
          {
            'author': {'firstName': e['u']['name'], 'id': e['u']['_id']},
            'createdAt': e['ts']['\$date'],
            'id': e['_id'],
            'status': 'seen',
            'text': e['msg'],
            'type': 'text'
          },
        ),
      ),
      ...messages.value,
    ].toList());
  }

  void addNotifications(List<Map<String, dynamic>> json) {
    messages.add([
      ...json
          .map(
            (e) => types.Message.fromJson(
              {
                'author': {'firstName': e['payload']['sender']['name'], 'id': e['payload']['sender']['_id']},
                'id': e['payload']['_id'],
                'status': 'seen',
                'text': e['text'],
                'type': 'text'
              },
            ),
          )
          .toList(),
      ...messages.value,
    ]);
  }

  String createId() {
    return UniqueKey().toString();
  }

  Future<String?> getPrivateRoomId(String username) async {
    final id = createId();
    Map msg = {
      'msg': 'method',
      'method': 'createDirectMessage',
      'id': id,
      'params': [username]
    };

    webSocketChannel.sink.add(jsonEncode(msg));

    final res = await stream.firstWhere((element) {
      return element.json['msg'] != null &&
          element.json['id'] != null &&
          element.json['result'] != null &&
          element.json['msg'] == 'result' &&
          element.json['id'] == id;
    });
    roomId = res.json['result']['rid'];

    log('Updated roomId $roomId', level: 1);

    return roomId;
  }

  void sendPrivateMessage(String message) async {
    final id = createId();
    Map msg = {
      'msg': 'method',
      'method': 'sendMessage',
      'id': id,
      'params': [
        {"_id": id, "rid": roomId, "msg": message}
      ]
    };

    webSocketChannel.sink.add(jsonEncode(msg));

    final res = await stream.firstWhere((element) {
      return element.json['result'] != null && element.json['msg'] == 'result' && element.json['id'] == id;
    });
    updateMessages(List<Map<String, dynamic>>.from([res.json['result']]));
  }

  void loadHistory(String username) async {
    if (roomId == null) {
      await getPrivateRoomId(username);
    }

    final id = createId();

    Map msg = {
      'msg': 'method',
      'method': 'loadHistory',
      'id': id,
      'params': [roomId, null, 50, null],
    };

    webSocketChannel.sink.add(jsonEncode(msg));

    final res = await stream.firstWhere((element) {
      return element.json['result'] != null && element.json['msg'] == 'result' && element.json['id'] == id;
    });

    updateMessages(List<Map<String, dynamic>>.from(res.json['result']?['messages']));
  }

  void subscribeToRoom(String username) async {
    if (roomId == null) {
      await getPrivateRoomId(username);
    }

    Map msg = {
      'msg': 'sub',
      'name': 'stream-livechat-room',
      'id': createId(),
      'params': [roomId],
    };

    webSocketChannel.sink.add(jsonEncode(msg));
  }
}
