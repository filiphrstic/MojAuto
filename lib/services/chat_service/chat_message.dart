import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

enum ChatMessageTypeEnum { system, text }

class ChatMessage {
  late final ChatMessageTypeEnum type;
  late final types.Message? message;
  final Map<String, dynamic> json;

  ChatMessage(this.json) {
    type = ChatMessageTypeEnum.system;
  }
}

/*
  ChatMessage prepareMessage(Map<String, dynamic> message) {
    return types.Message.fromJson({
      'author': {'firstName': 'John', 'id': '4c2307ba-3d40-442f-b1ff-b271f63904ca', 'lastName': 'Doe'},
      'createdAt': 1655648404000,
      'id': 'c67ed376-52bf-4d4e-ba2a-7a0f8467b22a',
      'status': 'seen',
      'text': message['text'] ?? 'werf',
      'type': 'text'
    });
  }
  */