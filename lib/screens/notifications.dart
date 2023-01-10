import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart' show HookWidget;
import '../utils/themes.dart';
import '../widgets/navigation/navigation_menu.dart';
import '../widgets/navigation/appbar_search.dart';

class NotificationsScreen extends HookWidget {
  const NotificationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [AppbarSearch()],
      ),
      body: _buildBody(context),
      bottomNavigationBar: const NavigationMenu(selectedIndex: 2),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              "Notifications",
              style: CustomDarkTextStyle.bodyLarge(context),
            ),
          ),
        ],
      ),
    );
  }
}
