import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:i18next/i18next.dart';
import 'package:mobile/classes/category.dart';
import 'package:mobile/classes/filter_service.dart';
import 'package:mobile/utils/themes.dart';

class PopupRangeInt extends HookWidget {
  const PopupRangeInt(this.filterElement, {Key? key}) : super(key: key);

  final Category filterElement;

  @override
  Widget build(BuildContext context) {
    ValueNotifier<int?> chosenValueFrom = ValueNotifier<int?>(null);
    ValueNotifier<int?> chosenValueTo = ValueNotifier<int?>(null);
    final I18Next i18next = I18Next.of(context)!;

    for (var element in FilterService.chosenCategoryList) {
      if (filterElement.categoryFilter.name == element.categoryFilter.name) {
        if (element.rangeFrom != null) {
          chosenValueFrom.value = element.rangeFrom;
        }
        if (element.rangeTo != null) {
          chosenValueTo.value = element.rangeTo;
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
        top: 30.0,
        left: 20.0,
        right: 20.0,
      ),
      title: Align(
          alignment: Alignment.center, child: Text(i18next.t("i18n:${filterElement.categoryFilter.name}"), style: CustomDarkTextStyle.bodyLarge(context))),
      content: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Align(
          alignment: Alignment.topCenter,
          child: Row(
            children: [
              Flexible(
                child: ValueListenableBuilder(
                  valueListenable: chosenValueFrom,
                  builder: (context, value, child) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 2),
                      child: DropdownButton(
                        isExpanded: true,
                        items: filterElement.vocabulary.options!.map((dynamic value) {
                          return DropdownMenuItem<int>(
                            value: value,
                            child: Text(value.toString(), style: CustomDarkTextStyle.bodyLarge(context)),
                          );
                        }).toList(),
                        onChanged: (value) {
                          filterElement.rangeFrom = value as int;
                          int index =
                              FilterService.chosenCategoryList.indexWhere((element) => element.categoryFilter.name == filterElement.categoryFilter.name);
                          if (index == -1) {
                            filterElement.rangeTo = null;
                            FilterService.chosenCategoryList.add(filterElement);
                          } else {
                            FilterService.chosenCategoryList[index].rangeFrom = value;
                          }
                          chosenValueFrom.value = value;
                        },
                        hint: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(i18next.t("i18n:${filterElement.categoryFilter.name} from"), style: CustomGrayTextStyle.bodyLarge(context)),
                        ),
                        value: chosenValueFrom.value,
                        selectedItemBuilder: (context) {
                          return filterElement.vocabulary.options!.map<Widget>((e) {
                            return Row(
                              children: [
                                Text(e.toString(), style: CustomDarkTextStyle.bodyLarge(context)),
                                IconButton(
                                  onPressed: () {
                                    int index = FilterService.chosenCategoryList
                                        .indexWhere((element) => element.categoryFilter.name == filterElement.categoryFilter.name);
                                    if (FilterService.chosenCategoryList[index].rangeTo == null) {
                                      FilterService.chosenCategoryList.removeAt(index);
                                    } else {
                                      FilterService.chosenCategoryList[index].rangeFrom = null;
                                    }
                                    chosenValueFrom.value = null;
                                  },
                                  icon: const Icon(Icons.cancel, color: Colors.grey),
                                  iconSize: 20,
                                )
                              ],
                            );
                          }).toList();
                        },
                      ),
                    );
                  },
                ),
              ),
              Flexible(
                child: ValueListenableBuilder(
                  valueListenable: chosenValueTo,
                  builder: (context, value, child) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 2),
                      child: DropdownButton(
                        isExpanded: true,
                        items: filterElement.vocabulary.options!.map((dynamic value) {
                          return DropdownMenuItem<int>(
                            value: value,
                            child: Text(value.toString(), style: CustomDarkTextStyle.bodyLarge(context)),
                          );
                        }).toList(),
                        onChanged: (value) {
                          filterElement.rangeTo = value as int;
                          int index =
                              FilterService.chosenCategoryList.indexWhere((element) => element.categoryFilter.name == filterElement.categoryFilter.name);
                          if (index == -1) {
                            filterElement.rangeFrom = null;
                            FilterService.chosenCategoryList.add(filterElement);
                          } else {
                            FilterService.chosenCategoryList[index].rangeTo = value;
                          }
                          chosenValueTo.value = value;
                        },
                        hint: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(i18next.t("i18n:${filterElement.categoryFilter.name} to"), style: CustomGrayTextStyle.bodyLarge(context)),
                        ),
                        value: chosenValueTo.value,
                        selectedItemBuilder: (context) {
                          return filterElement.vocabulary.options!.map<Widget>((e) {
                            return Row(
                              children: [
                                Text(e.toString()),
                                IconButton(
                                  onPressed: () {
                                    int index = FilterService.chosenCategoryList
                                        .indexWhere((element) => element.categoryFilter.name == filterElement.categoryFilter.name);
                                    if (FilterService.chosenCategoryList[index].rangeFrom == null) {
                                      FilterService.chosenCategoryList.removeAt(index);
                                    } else {
                                      FilterService.chosenCategoryList[index].rangeTo = null;
                                    }
                                    chosenValueTo.value = null;
                                  },
                                  icon: const Icon(Icons.cancel, color: Colors.grey),
                                  iconSize: 20,
                                )
                              ],
                            );
                          }).toList();
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
