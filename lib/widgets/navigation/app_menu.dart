import 'package:flutter/material.dart';
import '../../navigation/routes.dart';

/// A class for the top-left corner application menu
class AppMenu extends StatelessWidget {
  const AppMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: const Icon(
        Icons.menu_rounded,
      ),
      offset: const Offset(0, 40),
      elevation: 2,
      itemBuilder: (context) {
        return const [
          PopupMenuItem<int>(
            value: 0,
            child: Text("Settings"),
          ),
        ];
      },
      onSelected: (value) {
        if (value == 0) {
          Navigator.pushNamed(
            context,
            settingsScreenRoute,
          );
        }
      },
    );
  }
}
