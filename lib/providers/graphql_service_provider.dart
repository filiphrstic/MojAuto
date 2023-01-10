import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:flutter/material.dart';
import '../authentication/authentication_service.dart';

GraphQLClient getClient({
  required String uri,
  String? subscriptionUri,
}) {
  Link httpLink = HttpLink(uri);

  final AuthLink authLink = AuthLink(getToken: () async {
    final token = await AuthenticationService().getTokenAccess();
    return "Bearer $token";
  });

  Link link = authLink.concat(httpLink);

  if (subscriptionUri != null) {
    final WebSocketLink websocketLink = WebSocketLink(
      subscriptionUri,
      config: const SocketClientConfig(
        autoReconnect: true,
        inactivityTimeout: Duration(seconds: 30),
      ),
    );

    link = link.concat(websocketLink);
  }

  return GraphQLClient(
    /// Using InMemoryStore to not persist the cache between app restarts
    cache: GraphQLCache(store: InMemoryStore()),
    //cache: GraphQLCache(store: HiveStore()),
    link: link,
  );
}

String? uuidFromObject(Object object) {
  if (object is Map<String, Object>) {
    final String typeName = object['__typename'] as String;
    final String id = object['id'].toString();
    return <String>[typeName, id].join('/');
  }
  return null;
}

ValueNotifier<GraphQLClient> clientFor({
  required String uri,
  String? subscriptionUri,
}) {
  Link link = HttpLink(uri);
  if (subscriptionUri != null) {
    final WebSocketLink websocketLink = WebSocketLink(
      subscriptionUri,
      config: const SocketClientConfig(
        autoReconnect: true,
        inactivityTimeout: Duration(seconds: 30),
      ),
    );

    link = link.concat(websocketLink);
  }

  return ValueNotifier<GraphQLClient>(
    GraphQLClient(
      /// Using InMemoryStore to not persist the cache between app restarts
      cache: GraphQLCache(store: InMemoryStore()),
      //cache: GraphQLCache(store: HiveStore()),
      link: link,
    ),
  );
}

class GraphqlServiceProvider extends StatelessWidget {
  final String uri;
  final String? subscriptionUri;
  final Widget child;

  const GraphqlServiceProvider({
    Key? key,
    required this.child,
    this.subscriptionUri,
    required this.uri,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GraphQLProvider(
      client: ValueNotifier<GraphQLClient>(
        getClient(
          uri: uri,
          subscriptionUri: subscriptionUri,
        ),
      ),
      child: child,
    );
  }
}
