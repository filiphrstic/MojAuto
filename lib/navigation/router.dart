import 'package:flutter/material.dart';
import '../screens/chat/chat.dart';
import '../screens/user_details.dart';
import '../authentication/authentication_service.dart';
import '../screen_arguments/ad_details_arguments.dart';
import '../screen_arguments/filter_arguments.dart';
import '../screen_arguments/login_arguments.dart';
import '../screen_arguments/map_arguments.dart';
import '../screens/new_ad_step1.dart';
import '../screens/new_ad_step2.dart';
import '../screens/new_ad_step3.dart';
import '../screens/new_ad_step4.dart';
import '../navigation/routes.dart';
import '../screens/analytics.dart';
import '../screens/favorites.dart';
import '../screens/filter.dart';
import '../screens/filter_results.dart';
import '../screens/login.dart';
import '../screens/messages.dart';
import '../screens/my_ads.dart';
import '../screens/profile.dart';
import '../screens/brands.dart';
import '../screens/ad_details.dart';
import '../screens/home.dart';
import '../screens/notifications.dart';
import '../screens/saved_searches.dart';
import '../screens/settings.dart';
import '../screens/photo_view.dart';
import '../screens/map_view.dart';
import '../screens/blog_posts.dart';
import '../screens/undefined.dart';

/// Generates a route to a specific screen.
Route generateRoute(RouteSettings settings) {
  switch (settings.name) {

    // Home screen
    case homeScreenRoute:
      return MaterialPageRoute(builder: (context) => const HomeScreen());

    // Login screen
    case loginScreenRoute:
      LoginArguments loginArguments = settings.arguments as LoginArguments;
      return MaterialPageRoute(builder: (context) => LoginScreen(loginArguments: loginArguments));

    // Ad details screen
    case adDetailsScreenRoute:
      AdDetailsArguments adDetailsArguments = settings.arguments as AdDetailsArguments;
      return MaterialPageRoute(builder: (context) => AdDetailsScreen(adDetailsArguments: adDetailsArguments));

    // Brands screen
    case brandsScreenRoute:
      return MaterialPageRoute(builder: (context) => const BrandsScreen());

    // Blogs posts screen
    case blogPostsScreenRoute:
      return MaterialPageRoute(builder: (context) => const BlogPostsScreen());

    // Notifications screen
    case notificationsScreenRoute:
      return MaterialPageRoute(builder: (context) => const NotificationsScreen());

    // Settings screen
    case settingsScreenRoute:
      return MaterialPageRoute(builder: (context) => const SettingsScreen());

    // Messages screen
    case messagesScreenRoute:
      return MaterialPageRoute(builder: (context) => const MessagesScreen());

    // Favorites screen
    case favoritesScreenRoute:
      if (AuthenticationService().isLoggedIn()) {
        return MaterialPageRoute(builder: (context) => const FavoritesScreen());
      } else {
        LoginArguments loginArguments = settings.arguments as LoginArguments;
        return MaterialPageRoute(builder: (context) => LoginScreen(loginArguments: loginArguments));
      }

    // Saved searches screen
    case savedSearchesScreenRoute:
      if (AuthenticationService().isLoggedIn()) {
        return MaterialPageRoute(builder: (context) => const SavedSearchesScreen());
      } else {
        LoginArguments loginArguments = settings.arguments as LoginArguments;
        return MaterialPageRoute(builder: (context) => LoginScreen(loginArguments: loginArguments));
      }

    // New ad screen 1
    case newAdStep1ScreenRoute:
      if (AuthenticationService().isLoggedIn()) {
        return MaterialPageRoute(builder: (context) => const NewAdStep1Screen());
      } else {
        LoginArguments loginArguments = settings.arguments as LoginArguments;
        return MaterialPageRoute(builder: (context) => LoginScreen(loginArguments: loginArguments));
      }

    // New ad screen 2
    case newAdStep2ScreenRoute:
      Map<String, dynamic> controllersList = settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder: (context) => NewAdStep2Screen(
          controllersList: controllersList,
        ),
      );

    // New ad screen 3
    case newAdStep3ScreenRoute:
      Map<String, dynamic> controllersList = settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder: (context) => NewAdStep3Screen(
          controllersList: controllersList,
        ),
      );

    // New ad screen 4
    case newAdStep4ScreenRoute:
      Map<String, dynamic> controllersList = settings.arguments as Map<String, dynamic>;
      return MaterialPageRoute(
        builder: (context) => NewAdStep4Screen(
          controllersList: controllersList,
        ),
      );

    // Profile screen
    case profileScreenRoute:
      return MaterialPageRoute(builder: (context) => const ProfileScreen());

    // User details screen
    case userDetailsScreenRoute:
      return MaterialPageRoute(builder: (context) => const UserDetailsScreen());

    // My ads screen
    case myAdsScreenRoute:
      return MaterialPageRoute(builder: (context) => const MyAdsScreen());

    // Analytics screen
    case analyticsScreenRoute:
      return MaterialPageRoute(builder: (context) => const AnalyticsScreen());

    // Filter screen
    case filterScreenRoute:
      return MaterialPageRoute(builder: (context) => const FilterScreen());

    // Filter results screen
    case filterResultsScreenRoute:
      FilterArguments filterArguments = settings.arguments as FilterArguments;
      return MaterialPageRoute(
        builder: (context) => FilterResultsScreen(
          filterArguments: filterArguments,
        ),
      );

    // Map screen
    case mapViewScreenRoute:
      MapArguments mapArguments = settings.arguments as MapArguments;
      return MaterialPageRoute(builder: (context) => MapViewScreen(mapArguments: mapArguments));

    // Photo viewer screen
    case photoViewScreenRoute:
      NetworkImage image = settings.arguments as NetworkImage;
      return MaterialPageRoute(builder: (context) => PhotoViewScreen(image: image));

    // Chat screen
    case chatRoute:
      return MaterialPageRoute(builder: (context) => ChatScreen());

    // Any other undefined screen
    default:
      return MaterialPageRoute(builder: (context) => UndefinedScreen(name: settings.name));
  }
}
