import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart' show HookWidget, useState;
import 'package:i18next/i18next.dart';
import '../navigation/routes.dart';
import '../utils/themes.dart';
import '../widgets/filter/filter_cars_list.dart';
import '../widgets/navigation/navigation_menu.dart';
import '../widgets/navigation/appbar_search.dart';

class MyAdsScreen extends HookWidget {
  const MyAdsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [AppbarSearch()],
      ),
      body: _buildBody(context),
      bottomNavigationBar: const NavigationMenu(selectedIndex: 4),
    );
  }

  Widget _buildBody(BuildContext context) {
    final i18next = I18Next.of(context);
    final isSold = useState(false);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "My ads",
                style: CustomDarkTextStyle.bodyLarge(context),
              ),
            ),
            Row(
              children: [
                TextButton.icon(
                  onPressed: () {
                    isSold.value = false;
                  },
                  icon: Icon(
                    Icons.filter_none_sharp,
                    color: isSold.value == false ? orangeThemeColor : darkTextColor,
                  ),
                  label: Text(
                    i18next!.t('i18n:active').toUpperCase(),
                  ),
                ),
                const Spacer(),
                TextButton.icon(
                  onPressed: () {
                    isSold.value = true;
                  },
                  icon: Icon(
                    Icons.filter_none_sharp,
                    color: isSold.value == true ? orangeThemeColor : darkTextColor,
                  ),
                  label: Text(
                    i18next.t('i18n:sold').toUpperCase(),
                  ),
                ),
                const Spacer(),
                TextButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.filter_none_sharp),
                  label: Text(
                    i18next.t('i18n:expired').toUpperCase(),
                  ),
                ),
              ],
            ),
            FilterCarsList(
              myAdsBool: true,
              isSold: isSold.value,
            ),
            TextButton.icon(
              style: TextButton.styleFrom(
                minimumSize: const Size.fromHeight(40),
                backgroundColor: orangeThemeColor,
              ),
              onPressed: () {
                Navigator.pushNamed(context, newAdStep1ScreenRoute);
              },
              label: Text(
                i18next.t(
                  'i18n:addNewAd',
                ),
                style: CustomWhiteTextStyle.bodyLarge(context),
              ),
              icon: const Icon(
                Icons.add,
                color: lightTextColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
