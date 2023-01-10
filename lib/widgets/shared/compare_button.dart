import 'package:flutter/material.dart';
import 'package:i18next/i18next.dart';
import '../../screen_arguments/ad_details_arguments.dart';
import '../../data/graphql/schema.generated.graphql.dart';
import '../../navigation/routes.dart';
import '../../screen_arguments/compare_screen_arguments.dart';
import '../../screen_arguments/filter_arguments.dart';
import '../../screens/compare_picker.dart';
import '../../screens/compare_result.dart';
import '../../utils/globals.dart';
import '../../utils/themes.dart';

Widget buildCompareButton(
    BuildContext context, List<FindAllCategories$Query$Category> categories, FilterArguments? filterArguments, AdDetailsArguments? adDetailsArguments) {
  final i18next = I18Next.of(context)!;

  return Align(
    alignment: Alignment.bottomRight,
    child: FloatingActionButton.extended(
      heroTag: 'compareFABHeroTag',
      backgroundColor: lightGrayBackgroundColor,
      onPressed: () => {
        // if there are exactly 2 ads picked then redirect straight to comparison
        if (compareAdsIdsListGlobal.value.length == 2)
          {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CompareResultScreen(
                  compareScreenArguments: CompareScreenArguments(compareAdsIdsListGlobal.value, categories),
                ),
              ),
            )
          }
        // if there are more than 2 ads picked then redirect to ad selection screen
        else if (compareAdsIdsListGlobal.value.length > 2)
          {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ComparePickerScreen(categories: categories),
              ),
              // refresh the page after tapping back on the ComparePickerScreen
              // w/o this ad tiles would still be marked as "in compare list" even though
              // they could have been deleted on that screen
            ).then(
              (onValue) {
                // if filterArguments object is not null then button was used on the filter results screen - filter cars listview
                if (filterArguments != null) {
                  Navigator.popAndPushNamed(context, filterResultsScreenRoute, arguments: filterArguments);
                  // if adDetailsArguments object is not null then button was used on the ad details screen
                } else if (adDetailsArguments != null) {
                  // else - tile built on favroites screen (for now the only option)
                  Navigator.popAndPushNamed(context, adDetailsScreenRoute, arguments: adDetailsArguments);
                } else {
                  Navigator.popAndPushNamed(context, favoritesScreenRoute);
                }
              },
            ),
          }
        // for less than 2 ads picked present a proper information
        else
          {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(i18next.t("i18n:minimumTwoAds")),
              ),
            ),
          }
      },
      label: Text(
        "${compareAdsIdsListGlobal.value.length}",
        style: CustomDarkTextStyle.bodyLarge(context),
      ),
      icon: const Icon(Icons.compare_arrows_rounded, color: orangeThemeColor),
    ),
  );
}
