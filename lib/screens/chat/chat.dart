import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../services/chat_service/chat_service.dart';
import '../../services/chat_service/connection_data.dart';

const String username = 'mobile-app';
const String password = 'mobile-app';
const String usernameToTalkTo = 'root';

class ChatScreen extends HookWidget {
  final ChatService service = ChatService('rocket.chat.mojauto.hr');

  ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final connectionMemo = useMemoized(() => service.connect(username, password), const []);
    final connectionSnapshot = useFuture(connectionMemo);

    if (connectionSnapshot.hasError) {
      return _buildLoadingScaffold(context, Text(connectionSnapshot.error.toString()));
    }

    if (connectionSnapshot.connectionState != ConnectionState.done || !connectionSnapshot.hasData) {
      return _buildLoadingScaffold(context, const CircularProgressIndicator.adaptive());
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Rocketchat: ${connectionSnapshot.data?.user.name ?? 'Anonymous'}'),
        automaticallyImplyLeading: true,
      ),
      body: _buildBody(
        context,
        connectionData: connectionSnapshot.data!,
      ),
    );
  }

  Widget _buildLoadingScaffold(BuildContext context, Widget child) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rocketchat'),
        automaticallyImplyLeading: true,
      ),
      body: Padding(padding: const EdgeInsets.all(20), child: Center(child: child)),
    );
  }

  Widget _buildBody(BuildContext context, {required ConnectionData connectionData}) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: _ChatScreenMessages(connectionData),
    );
  }
}

class _ChatScreenMessages extends HookWidget {
  final ConnectionData _connectionData;
  const _ChatScreenMessages(this._connectionData);

  get _user => types.User.fromJson({
        ..._connectionData.user.toMap(),
        'id': _connectionData.user.username,
      });

  @override
  Widget build(BuildContext context) {
    final streamMemo = useMemoized(() => _connectionData.messages, const []);
    final stream = useStream(streamMemo);

    if (stream.connectionState != ConnectionState.active) {
      return const Center(child: CircularProgressIndicator.adaptive());
    }

    useEffect(() {
      Future.microtask(_onJoin);
      return null;
    }, [stream.connectionState]);

    return Chat(
      messages: stream.data!,
      //onAttachmentPressed: _handleAttachmentPressed,
      //onMessageTap: _handleMessageTap,
      //onPreviewDataFetched: _handlePreviewDataFetched,
      onSendPressed: (text) => _sendMessage(text.text),
      showUserAvatars: true,
      showUserNames: true,
      user: _user,
    );
  }

  void _sendMessage(String text) {
    //_connectionData.webSocketService.sendMessageOnChannel(text, _connectionData.webSocketChannel, channel);
    //_connectionData.webSocketService.sendMessageOnRoom(text, _connectionData.webSocketChannel, room);
    _connectionData.sendPrivateMessage(text);
  }

  void _onJoin() {
    _connectionData.loadHistory(usernameToTalkTo);
    _connectionData.subscribeToRoom(usernameToTalkTo);
  }
}
