import 'package:flutter/material.dart';
import '../../navigation/routes.dart';

/// A class for the top-right corner user menu
class AppbarSearch extends StatelessWidget {
  const AppbarSearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.search,
      ),
      onPressed: () {
        //for testing purposes
        Navigator.pushNamed(context, filterScreenRoute);
      },
    );
  }
}
