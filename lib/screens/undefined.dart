import 'package:flutter/material.dart';
import '../utils/themes.dart';
import '../widgets/navigation/navigation_menu.dart';
import '../widgets/navigation/appbar_search.dart';

class UndefinedScreen extends StatelessWidget {
  final String? name;

  const UndefinedScreen({Key? key, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [AppbarSearch()],
      ),
      body: _buildBody(context),
      bottomNavigationBar: const NavigationMenu(selectedIndex: 0),
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
              "Undefined screen route",
              style: CustomDarkTextStyle.bodyLarge(context),
            ),
          ),
        ],
      ),
    );
  }
}
