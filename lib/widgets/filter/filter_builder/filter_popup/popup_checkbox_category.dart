import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:i18next/i18next.dart';
import 'package:mobile/classes/category.dart';
import 'package:mobile/classes/filter_service.dart';
import 'package:mobile/utils/enums.dart';
import 'package:mobile/utils/themes.dart';

class PopupCheckboxCategory extends HookWidget {
  const PopupCheckboxCategory(this.filterElement, {Key? key}) : super(key: key);

  final Category filterElement;

  @override
  Widget build(BuildContext context) {
    List<ValueNotifier<bool>> checkedCategory = [];
    final I18Next i18next = I18Next.of(context)!;

    for (var i = 0; i < filterElement.listItems.length; i++) {
      ValueNotifier<bool> checkCategory = ValueNotifier<bool>(false);
      checkedCategory.add(checkCategory);
    }

    for (var element in FilterService.chosenCategoryList) {
      if (element.filterType == FilterType.checkboxCategory && filterElement.categoryFilter.categoryId == element.categoryFilter.categoryId) {
        for (var chosenCheckBoxCategoryItem in element.listChosenCheckboxCategoryItems) {
          final index = filterElement.listItems.indexWhere((listItem) => listItem.categoryId == chosenCheckBoxCategoryItem.categoryId);
          checkedCategory[index].value = true;
        }
      }
    }

    final alertDialogHeight = MediaQuery.of(context).size.height - (MediaQuery.of(context).size.height * 0.9);
    return AlertDialog(
      insetPadding: EdgeInsets.only(top: alertDialogHeight),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      contentPadding: const EdgeInsets.only(
        top: 10.0,
      ),
      title: Align(
        alignment: Alignment.center,
        child: Text(
          i18next.t("i18n:${filterElement.categoryFilter.name}"),
          style: CustomDarkTextStyle.bodyLarge(context),
        ),
      ),
      content: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: filterElement.listItems.length,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: ((context, index) {
                  return ValueListenableBuilder(
                    valueListenable: checkedCategory[index],
                    builder: (context, value, child) {
                      return CheckboxListTile(
                        side: const BorderSide(color: darkBlueThemeColor, width: 1.5),
                        activeColor: orangeThemeColor,
                        dense: true,
                        visualDensity: VisualDensity.compact,
                        controlAffinity: ListTileControlAffinity.leading,
                        title: Transform.translate(
                            offset: const Offset(-10, 0),
                            child: Text(i18next.t("i18n:${filterElement.listItems[index].name}"), style: CustomDarkTextStyle.bodyLarge(context))),
                        value: checkedCategory[index].value,
                        onChanged: (newCheckValue) {
                          checkedCategory[index].value = newCheckValue as bool;
                          int indexCategory =
                              FilterService.chosenCategoryList.indexWhere((element) => element.categoryFilter.name == filterElement.categoryFilter.name);
                          if (indexCategory == -1) {
                            filterElement.listChosenCheckboxCategoryItems.add(filterElement.listItems[index]);
                            FilterService.chosenCategoryList.add(filterElement);
                          } else {
                            if (newCheckValue == false) {
                              if (FilterService.chosenCategoryList[indexCategory].listChosenCheckboxCategoryItems.length == 1) {
                                FilterService.chosenCategoryList[indexCategory].listChosenCheckboxCategoryItems.clear();
                                FilterService.chosenCategoryList.removeAt(indexCategory);
                              } else {
                                FilterService.chosenCategoryList[indexCategory].listChosenCheckboxCategoryItems
                                    .removeWhere((element) => element.categoryId == filterElement.listItems[index].categoryId);
                              }
                            } else {
                              FilterService.chosenCategoryList[indexCategory].listChosenCheckboxCategoryItems.add(filterElement.listItems[index]);
                            }
                          }
                        },
                      );
                    },
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
