import 'dart:convert';
import 'dart:developer';
import 'package:rocket_chat_connector_flutter/models/authentication.dart';
import 'package:rocket_chat_connector_flutter/services/authentication_service.dart';
import 'package:rocket_chat_connector_flutter/services/http_service.dart' as rocket_http_service;
import 'package:rocket_chat_connector_flutter/web_socket/web_socket_service.dart';
import 'chat_message.dart';
import 'connection_data.dart';

class ChatService {
  final String domain;
  final WebSocketService webSocketService = WebSocketService();

  late final String serverUrl;
  late final String webSocketUrl;

  late final rocket_http_service.HttpService rocketHttpService;

  ChatService(this.domain) {
    serverUrl = 'https://$domain/';
    webSocketUrl = 'wss://$domain/websocket';
    rocketHttpService = rocket_http_service.HttpService(Uri.parse(serverUrl));
  }

  Future<ConnectionData> connect(String username, String password) async {
    final authentication = await getAuthentication(username, password);
    final user = authentication.data!.me;

    final webSocketChannel = webSocketService.connectToWebSocket(webSocketUrl, authentication);
    webSocketService.streamNotifyUserSubscribe(webSocketChannel, user!);
    webSocketService.sendUserPresence(webSocketChannel);

    final stream = prepareStream(webSocketChannel.stream);
    return ConnectionData(user, webSocketChannel, stream, webSocketService);
  }

  Future<Authentication> getAuthentication(String username, String password) async {
    final AuthenticationService authenticationService = AuthenticationService(rocketHttpService);
    return await authenticationService.login(username, password);
  }

  Stream<ChatMessage> prepareStream(Stream<dynamic> stream) {
    return stream.map((event) {
      log(event);
      return ChatMessage(jsonDecode(event));
    }).asBroadcastStream();
  }
}
