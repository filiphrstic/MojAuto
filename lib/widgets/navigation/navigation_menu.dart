import 'package:flutter/material.dart';
import '../../navigation/routes.dart';
import '../../screen_arguments/login_arguments.dart';
import '../../utils/themes.dart';

/// A class for the bottom navigation bar
class NavigationMenu extends StatelessWidget {
  // Todo: find a way to show the selected button dynamically, not by passed argument
  final int selectedIndex;
  const NavigationMenu({Key? key, required this.selectedIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: navigationBarBackgroudColor,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Image.asset(
            selectedIndex == 0 ? 'assets/icons/navigation/home_active.png' : 'assets/icons/navigation/home.png',
            width: 16,
            height: 16,
          ),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            selectedIndex == 1 ? 'assets/icons/navigation/favorites_active.png' : 'assets/icons/navigation/favorites.png',
            width: 16,
            height: 16,
          ),
          label: "Favorites",
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            selectedIndex == 2 ? 'assets/icons/navigation/searches_active.png' : 'assets/icons/navigation/searches.png',
            width: 21,
            height: 16,
          ),
          label: "My searches",
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            selectedIndex == 3 ? 'assets/icons/navigation/create_active.png' : 'assets/icons/navigation/create.png',
            width: 16,
            height: 16,
          ),
          label: "Create ad",
        ),
        BottomNavigationBarItem(
          icon: Image.asset(
            selectedIndex == 4 ? 'assets/icons/navigation/profile_active.png' : 'assets/icons/navigation/profile.png',
            width: 16,
            height: 16,
          ),
          label: "My profile",
        ),
      ],
      onTap: (value) {
        if (value == 0) {
          Navigator.pushNamed(
            context,
            homeScreenRoute,
          );
        }
        if (value == 1) {
          Navigator.pushNamed(
            context,
            favoritesScreenRoute,
            arguments: LoginArguments(value, favoritesScreenRoute),
          );
        }
        if (value == 2) {
          Navigator.pushNamed(
            context,
            savedSearchesScreenRoute,
            arguments: LoginArguments(value, savedSearchesScreenRoute),
          );
        }
        if (value == 3) {
          Navigator.pushNamed(
            context,
            newAdStep1ScreenRoute,
            arguments: LoginArguments(value, newAdStep1ScreenRoute),
          );
        }
        if (value == 4) {
          Navigator.pushNamed(
            context,
            profileScreenRoute,
          );
        }
      },
      type: BottomNavigationBarType.fixed,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      currentIndex: selectedIndex,
      selectedLabelStyle: CustomDarkTextStyle.bodyMedium(context),
      unselectedLabelStyle: CustomDarkTextStyle.bodyMedium(context),
      selectedItemColor: orangeThemeColor, // doesn't apply to icons because we have custom ones in two colors (for selected/unselected)
      unselectedItemColor: navigationBarIconsColor, // doesn't apply to icons because we have custom ones in two colors (for selected/unselected)
      elevation: 0,
    );
  }
}
