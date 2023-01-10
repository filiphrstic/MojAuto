import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:i18next/i18next.dart';
import 'package:mobile/classes/category.dart';
import 'package:mobile/classes/filter_service.dart';
import 'package:mobile/utils/enums.dart';
import 'package:mobile/utils/themes.dart';

class PopupSelectInt extends HookWidget {
  PopupSelectInt(this.filterElement, {Key? key}) : super(key: key);

  final Category filterElement;
  final ValueNotifier<int?> chosenItemInt = ValueNotifier<int?>(null);

  @override
  Widget build(BuildContext context) {
    final I18Next i18next = I18Next.of(context)!;

    selectPreviouslyChosenValues();

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
        left: 20.0,
        right: 20.0,
      ),
      title: Align(
          alignment: Alignment.center, child: Text(i18next.t("i18n:${filterElement.categoryFilter.name}"), style: CustomDarkTextStyle.bodyLarge(context))),
      content: SizedBox(
        width: 200,
        height: 300,
        child: Column(children: [
          ValueListenableBuilder(
            valueListenable: chosenItemInt,
            builder: ((context, value, child) {
              return DropdownButton(
                isExpanded: true,
                items: filterElement.vocabulary.options!.map((dynamic value) {
                  return DropdownMenuItem<int>(
                    value: value,
                    child: Text(value.toString(), style: CustomDarkTextStyle.bodyLarge(context)),
                  );
                }).toList(),
                onChanged: (value) {
                  filterElement.chosenItemInt = value as int;
                  int index = FilterService.chosenCategoryList.indexOf(filterElement);
                  if (index == -1) {
                    FilterService.chosenCategoryList.add(filterElement);
                  } else {
                    FilterService.chosenCategoryList[index] = filterElement;
                  }
                  chosenItemInt.value = value;
                },
                hint: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(i18next.t("i18n:${filterElement.categoryFilter.name}"), style: CustomGrayTextStyle.bodyLarge(context)),
                ),
                value: chosenItemInt.value,
                selectedItemBuilder: (context) {
                  return filterElement.vocabulary.options!.map<Widget>((e) {
                    return Row(
                      children: [
                        Text(e.toString(), style: CustomDarkTextStyle.bodyLarge(context)),
                        IconButton(
                          onPressed: () {
                            FilterService.chosenCategoryList.removeWhere((element) => element.categoryFilter == filterElement.categoryFilter);
                            chosenItemInt.value = null;
                          },
                          icon: const Icon(Icons.cancel, color: Colors.grey),
                          iconSize: 20,
                        )
                      ],
                    );
                  }).toList();
                },
              );
            }),
          )
        ]),
      ),
    );
  }

  selectPreviouslyChosenValues() {
    for (var element in FilterService.chosenCategoryList) {
      if (element.categoryFilter.categoryId == filterElement.categoryFilter.categoryId) {
        if (element.filterType == FilterType.selectInt) {
          chosenItemInt.value = element.chosenItemInt;
        }
      }
    }
  }
}
