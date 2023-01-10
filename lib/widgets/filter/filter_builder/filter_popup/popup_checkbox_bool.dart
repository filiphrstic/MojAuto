import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:i18next/i18next.dart';
import 'package:mobile/classes/category.dart';
import 'package:mobile/classes/filter_service.dart';
import 'package:mobile/utils/enums.dart';
import 'package:mobile/utils/themes.dart';

class PopupCheckboxBool extends HookWidget {
  const PopupCheckboxBool(this.filterElement, {Key? key}) : super(key: key);

  final Category filterElement;

  @override
  Widget build(BuildContext context) {
    final ValueNotifier<bool> checkedBool = ValueNotifier<bool>(false);
    final I18Next i18next = I18Next.of(context)!;

    for (var element in FilterService.chosenCategoryList) {
      if (element.filterType == FilterType.checkboxBool && filterElement.categoryFilter.categoryId == element.categoryFilter.categoryId) {
        checkedBool.value = true;
      }
    }

    return AlertDialog(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(
            20.0,
          ),
        ),
      ),
      contentPadding: const EdgeInsets.only(
        top: 10.0,
      ),
      title: Align(
          alignment: Alignment.center, child: Text(i18next.t("i18n:${filterElement.categoryFilter.name}"), style: CustomDarkTextStyle.bodyLarge(context))),
      content: SizedBox(
        width: 200,
        height: 300,
        child: Column(
          children: [
            ValueListenableBuilder(
              valueListenable: checkedBool,
              builder: ((context, value, child) {
                return CheckboxListTile(
                  side: const BorderSide(color: darkBlueThemeColor, width: 1.5),
                  activeColor: orangeThemeColor,
                  dense: true,
                  visualDensity: VisualDensity.compact,
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Transform.translate(
                      offset: const Offset(-10, 0),
                      child: Text(i18next.t("i18n:${filterElement.categoryFilter.name}"), style: CustomDarkTextStyle.bodyLarge(context))),
                  value: checkedBool.value,
                  onChanged: (newCheckValue) {
                    int index = FilterService.chosenCategoryList.indexWhere((element) => element.categoryFilter.name == filterElement.categoryFilter.name);
                    if (newCheckValue == false) {
                      FilterService.chosenCategoryList.removeAt(index);
                    } else {
                      FilterService.chosenCategoryList.add(filterElement);
                    }
                    checkedBool.value = newCheckValue as bool;
                  },
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
