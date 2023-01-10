import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:i18next/i18next.dart';
import '../screen_arguments/login_arguments.dart';
import '../widgets/navigation/navigation_menu.dart';
import '../authentication/oauth.dart';
import '../utils/themes.dart';

class LoginScreen extends HookWidget {
  final LoginArguments loginArguments;
  const LoginScreen({Key? key, required this.loginArguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final I18Next i18next = I18Next.of(context)!;
    TextStyle linkStyle = const TextStyle(color: Colors.blue);
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: RichText(
          text: TextSpan(
            style: CustomDarkTextStyle.bodyLarge(context),
            children: <TextSpan>[
              TextSpan(
                text: i18next.t("i18n:youNeedTo"),
              ),
              TextSpan(
                text: i18next.t("i18n:logIn"),
                style: linkStyle,
                recognizer: TapGestureRecognizer()..onTap = () => AuthServerConfig().login(context, loginArguments.route),
              ),
              TextSpan(
                text: i18next.t("i18n:toUseThisFunctionality"),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: NavigationMenu(selectedIndex: loginArguments.navigationMenuSelectedIndex),
    );
  }
}
