import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import '../classes/vocabulary_service.dart';
import 'providers/graphql_service_provider.dart';
import 'utils/themes.dart';
import 'screens/undefined.dart';
import 'navigation/router.dart' as router;
import 'navigation/routes.dart';
import 'package:get/get.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'internationalization/supported_locales.dart';
import 'package:i18next/i18next.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  await initHiveForFlutter();
  final prefs = await SharedPreferences.getInstance();
  runApp(MyApp(preferences: prefs));
}

class MyApp extends StatelessWidget {
  final GlobalKey<NavigatorState> _navigator = GlobalKey<NavigatorState>();
  final SharedPreferences preferences;

  MyApp({Key? key, required this.preferences}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildCoreProviders(context);
  }

  Widget _buildCoreProviders(BuildContext context) {
    return GraphqlServiceProvider(
      //ADD GRAPHQL SERVER HERE
      uri: 'graphql server address',
      child: _buildConsumerProviders(context),
    );
  }

  Widget _buildConsumerProviders(BuildContext context) {
    return _buildApp(context);
    /*return MultiProvider(
      providers: [],
      builder: (context, child) {
        return _buildApp(context);
      },
    );*/
  }

  Widget _buildApp(BuildContext context) {
    final client = ValueNotifier(
      //ADD GRAPHQL SERVER HERE
      getClient(uri: 'graphql server address'),
    );
    //makes status bar icons and text dark (clock, battery, wifi etc.)
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
    VocabularyService().createVocabularies();

    return GraphQLProvider(
      client: client,
      child: GetMaterialApp(
        theme: Themes().themeData,
        navigatorKey: _navigator,
        title: 'Autofox',
        initialRoute: homeScreenRoute, //loginScreenRoute,
        onGenerateRoute: router.generateRoute,
        onUnknownRoute: (settings) => MaterialPageRoute(
          builder: (context) => UndefinedScreen(
            name: settings.name,
          ),
        ),
        locale: SupportedLocales().setLocale(preferences),
        localizationsDelegates: [
          ...GlobalMaterialLocalizations.delegates,
          I18NextLocalizationDelegate(
            locales: SupportedLocales().getLocales(),
            dataSource: AssetBundleLocalizationDataSource(
              bundlePath: 'lib/internationalization',
            ),
          ),
        ],
        supportedLocales: SupportedLocales().getLocales(),
      ),
    );
  }
}
