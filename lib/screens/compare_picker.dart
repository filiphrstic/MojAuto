import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:i18next/i18next.dart';
import '../utils/globals.dart';
import '../data/graphql/schema.generated.graphql.dart';
import '../screen_arguments/compare_screen_arguments.dart';
import '../screens/compare_result.dart';
import '../utils/themes.dart';
import '../widgets/navigation/navigation_menu.dart';

class ComparePickerScreen extends HookWidget {
  final List<FindAllCategories$Query$Category> categories;
  const ComparePickerScreen({Key? key, required this.categories}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final i18next = I18Next.of(context)!;

    // list of bools indicating whether ad at index is selected for comparison
    ValueNotifier<List<bool>> isChecked = useState(List<bool>.filled(compareAdsIdsListGlobal.value.length, false));
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: compareAdsIdsListGlobal.value.length,
        itemBuilder: (context, index) {
          return CheckboxListTile(
            title: Text(compareAdsIdsListGlobal.value[index].title),
            value: isChecked.value[index],
            checkColor: backgroundColor,
            activeColor: orangeThemeColor,
            onChanged: (value) {
              // limiting to 2 ads as adviced by the PM :)
              //int counter = isChecked.value.where((e) => e == true).length;
              //if (counter == 2 && value == true) return;
              // need to reassing the list for the hook to recognize a change of it's value
              // 1. making a copy of isChecked
              List<bool> isCheckedReplaced = [...isChecked.value];
              // 2. changing value at selected index
              isCheckedReplaced[index] = value!;
              // 3. assigning copy of isChecked to the original
              isChecked.value = isCheckedReplaced;
            },
          );
        },
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          // remove button is visible only when there is at least one option selected
          isChecked.value.any((e) => e == true)
              ? Padding(
                  padding: const EdgeInsets.only(bottom: 10),
                  child: FloatingActionButton.extended(
                    backgroundColor: lightGrayBackgroundColor,
                    onPressed: () {
                      _showAlertDialog(context, isChecked, i18next);
                    },
                    heroTag: 'removeSelectedFABHeroTag',
                    label: Text(
                      i18next.t("i18n:remove"),
                      style: CustomDarkTextStyle.bodyLarge(context),
                    ),
                    icon: const Icon(Icons.delete_forever_rounded, color: orangeThemeColor),
                  ),
                )
              : const SizedBox.shrink(),
          FloatingActionButton.extended(
            // matches the heroTag on the CompareResultsScreen
            heroTag: 'compareFABHeroTag',
            backgroundColor: lightGrayBackgroundColor,
            onPressed: () {
              // Todo: maybe rewrite the compareAdsIdsListGlobal to a map and move isChecked there?
              List<AdWithAdAutoFragmentMixin> adsSelectedToCompare = [];
              // picking ads to be compared by index that matches the index of all trues in the isChecked list
              for (int index = 0; index <= isChecked.value.length - 1; index++) {
                if (isChecked.value[index] == true) {
                  adsSelectedToCompare.add(compareAdsIdsListGlobal.value[index]);
                }
              }
              // if there are 2 ads picked then redirect to compare screen
              if (adsSelectedToCompare.length == 2) {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CompareResultScreen(
                      compareScreenArguments: CompareScreenArguments(adsSelectedToCompare, categories),
                    ),
                  ),
                );
              }
              // if more or lest than 2 ads are selected then show an error message
              else {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(i18next.t("i18n:twoAds")),
                  ),
                );
              }
            },
            label: Text(
              i18next.t("i18n:compare"),
              style: CustomDarkTextStyle.bodyLarge(context),
            ),
            icon: const Icon(Icons.compare_arrows_rounded, color: orangeThemeColor),
          ),
        ],
      ),
      bottomNavigationBar: const NavigationMenu(selectedIndex: 0),
    );
  }

  _showAlertDialog(BuildContext context, ValueNotifier isChecked, I18Next i18next) {
    Widget cancelButton = TextButton(
      child: Text(i18next.t("i18n:cancel")),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    Widget continueButton = TextButton(
      child: Text(i18next.t("i18n:yes")),
      onPressed: () {
        // removing starting from the last one (list indexes rebuild on remove)
        for (int index = isChecked.value.length - 1; index >= 0; index--) {
          if (isChecked.value[index] == true) {
            compareAdsIdsListGlobal.value.removeAt(index);
          }
        }
        // reassigning the check list
        isChecked.value = List<bool>.filled(compareAdsIdsListGlobal.value.length, false);
        Navigator.of(context).pop();
      },
    );
    AlertDialog alert = AlertDialog(
      title: Text(i18next.t("i18n:confirmation")),
      content: Text(i18next.t("i18n:confirmRemoveCompare")),
      actions: [
        cancelButton,
        continueButton,
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
