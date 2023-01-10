import 'package:flutter/material.dart';
import 'package:flutter_web_auth/flutter_web_auth.dart';
import 'package:jwt_decoder/jwt_decoder.dart';
import '../authentication/user_data.dart';
import 'package:oauth2/oauth2.dart' as oauth2;
import 'package:oauth2/oauth2.dart';
import 'package:webview_flutter/webview_flutter.dart';
import '../authentication/authentication_service.dart';
import '../navigation/routes.dart';

String? tokenID;

class AuthServerConfig {
  final String serverName = 'https://auth.autofox.iddqd.hr';
  final String realmName = 'autofox';
  final String identifier = 'mobile-app';
  final String secret = 'g7UMedBmzYMxO4tWUwKoxR0SOBtaLkSv';
  late final Uri authorizationEndpoint = Uri.parse('$serverName/realms/$realmName/protocol/openid-connect/auth');
  late final Uri tokenEndpoint = Uri.parse('$serverName/realms/$realmName/protocol/openid-connect/token');
  late final Uri endSessionEndpoint =
      Uri.parse('$serverName/realms/$realmName/protocol/openid-connect/logout?id_token_hint=$tokenID&post_logout_redirect_uri=$redirectUrlLogout');
  late final Uri redirectUrl = Uri.parse('autofox:/');
  late final Uri redirectUrlLogout = Uri.parse('$serverName/oauth2/sign_out/');
  late Uri responseUrl;

  Future<oauth2.Client> createClient(BuildContext context) async {
    var grant = oauth2.AuthorizationCodeGrant(
      identifier,
      authorizationEndpoint,
      tokenEndpoint,
      secret: secret,
    );
    Uri authorizationUrl = grant.getAuthorizationUrl(redirectUrl, scopes: ['openid', 'profile']);
    final result = await FlutterWebAuth.authenticate(url: authorizationUrl.toString(), callbackUrlScheme: 'autofox');
    responseUrl = Uri.parse(result);
    return await grant.handleAuthorizationResponse(responseUrl.queryParameters);
  }

  Future<void> endSession(BuildContext context) async {
    tokenID = (await AuthenticationService().getTokenID());
    // ignore: use_build_context_synchronously
    await Navigator.push(
      context,
      MaterialPageRoute(
        fullscreenDialog: true,
        builder: (_) {
          return SafeArea(
            child: WebView(
              javascriptMode: JavascriptMode.unrestricted,
              initialUrl: endSessionEndpoint.toString(),
              navigationDelegate: (navigationRequest) {
                if (navigationRequest.url.startsWith(redirectUrlLogout.toString())) {
                  tokenID = null;
                  AuthenticationService().removeToken('token_id');
                  AuthenticationService().removeToken('token_access');
                  AuthenticationService().removeCredentials();
                  Navigator.pop(context);
                  _redirectAfterLogout(context, homeScreenRoute);
                  return NavigationDecision.prevent;
                }
                return NavigationDecision.navigate;
              },
            ),
          );
        },
      ),
    );
  }

  void login(BuildContext context, String route) async {
    Client client = await createClient(context);
    UserData(JwtDecoder.decode(client.credentials.idToken!));
    AuthenticationService().setToken('token_id', client.credentials.idToken);
    AuthenticationService().setToken('token_access', client.credentials.accessToken);
    AuthenticationService().setCredentials(client.credentials);

    tokenID = client.credentials.idToken!;
    // ignore: use_build_context_synchronously
    _redirectAfterLogin(context, route);
  }

  void _clearFocus(BuildContext context) {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  void _redirectAfterLogin(BuildContext context, String route) {
    _clearFocus(context);
    Navigator.pushReplacementNamed(context, route);
  }

  void _redirectAfterLogout(BuildContext context, String route) {
    _clearFocus(context);
    Navigator.of(context).pushNamedAndRemoveUntil(
      route,
      (Route<dynamic> route) => false,
    );
  }
}
