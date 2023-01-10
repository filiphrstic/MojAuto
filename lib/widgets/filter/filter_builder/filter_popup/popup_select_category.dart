import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:i18next/i18next.dart';
import 'package:mobile/classes/category.dart';
import 'package:mobile/classes/category_select.dart';
import 'package:mobile/classes/filter_service.dart';
import 'package:mobile/data/graphql/schema.generated.graphql.dart';
import 'package:mobile/utils/enums.dart';
import 'package:mobile/utils/themes.dart';

class PopupSelectCategory extends HookWidget {
  const PopupSelectCategory(this.filterElement, {Key? key}) : super(key: key);

  final Category filterElement;

  @override
  Widget build(BuildContext context) {
    final I18Next i18next = I18Next.of(context)!;

    populateDropdownWithValues();
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
        child: Column(
          children: [
            ValueListenableBuilder(
              valueListenable: filterElement.chosenItem,
              builder: ((context, value, child) {
                return ValueListenableBuilder(
                  valueListenable: filterElement.listItemsWithNotifier,
                  builder: (BuildContext context, List<FindAllCategories$Query$Category> value, Widget? child) {
                    return Column(children: [
                      DropdownButton(
                        isExpanded: true,
                        items: filterElement.listItemsWithNotifier.value.map((FindAllCategories$Query$Category value) {
                          return DropdownMenuItem<FindAllCategories$Query$Category>(
                            value: value,
                            child: Text(
                              value.name,
                              style: CustomDarkTextStyle.bodyLarge(context),
                            ),
                          );
                        }).toList(),
                        onChanged: (value) {
                          filterElement.chosenItem.value = value as FindAllCategories$Query$Category;
                          int index = FilterService.chosenCategoryList.indexOf(filterElement);
                          if (index == -1) {
                            FilterService.chosenCategoryList.add(filterElement);
                          } else {
                            FilterService.chosenCategoryList[index] = filterElement;
                          }
                          if (filterElement.listCategoriesForSelect.isNotEmpty) {
                            for (var elementCategorySelect in filterElement.listCategoriesForSelect) {
                              if (elementCategorySelect!.filterItemCategory.categoryId.toString() == filterElement.chosenItem.value!.categoryId) {
                                for (var mainCat in FilterService.mainCategories) {
                                  if (mainCat.mainCategoryChildren
                                      .any((mainCatChildr) => mainCatChildr.categoryFilter.categoryId == filterElement.categoryFilter.categoryId)) {
                                    for (var mainChild in mainCat.mainCategoryChildren) {
                                      if (mainChild.listItems
                                          .any((element) => element.parentCategoryId.toString() == filterElement.chosenItem.value!.categoryId)) {
                                        CategorySelect? categorySelect = filterElement.listCategoriesForSelect.firstWhere((elementCategorySelect) =>
                                            elementCategorySelect!.filterItemCategory.categoryId == filterElement.chosenItem.value!.categoryId);

                                        if (categorySelect != null) {
                                          mainChild.listItemsWithNotifier.value = categorySelect.listDependableChildren;
                                          mainChild.chosenItem.value = null;
                                          FilterService.chosenCategoryList
                                              .removeWhere((element) => element.categoryFilter.categoryId == mainChild.categoryFilter.categoryId);
                                        } else {
                                          mainChild.listItemsWithNotifier.value = [];
                                          mainChild.chosenItem.value = null;
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        },
                        hint: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            i18next.t("i18n:${filterElement.categoryFilter.name}"),
                            style: CustomGrayTextStyle.bodyLarge(context),
                          ),
                        ),
                        value: filterElement.chosenItem.value,
                        selectedItemBuilder: (context) {
                          return filterElement.listItemsWithNotifier.value.map<Widget>((e) {
                            return Row(
                              children: [
                                Text(e.name, style: CustomDarkTextStyle.bodyLarge(context)),
                                IconButton(
                                  onPressed: () {
                                    for (var mainCat in FilterService.mainCategories) {
                                      if (mainCat.mainCategoryChildren
                                          .any((mainCatChildr) => mainCatChildr.categoryFilter.categoryId == filterElement.categoryFilter.categoryId)) {
                                        for (var mainChild in mainCat.mainCategoryChildren) {
                                          if (mainChild.listItems
                                              .any((catItem) => catItem.parentCategoryId.toString() == filterElement.chosenItem.value!.categoryId)) {
                                            mainChild.listItemsWithNotifier.value = [];
                                            mainChild.chosenItem.value = null;
                                            FilterService.chosenCategoryList
                                                .removeWhere((element) => element.categoryFilter.categoryId == mainChild.categoryFilter.categoryId);
                                          }
                                        }
                                      }
                                    }
                                    FilterService.chosenCategoryList.removeWhere((element) => element.categoryFilter == filterElement.categoryFilter);
                                    filterElement.chosenItem.value = null;
                                  },
                                  icon: const Icon(Icons.cancel, color: Colors.grey),
                                  iconSize: 20,
                                )
                              ],
                            );
                          }).toList();
                        },
                      ),
                    ]);
                  },
                );
              }),
            ),
          ],
        ),
      ),
    );
  }

  void populateDropdownWithValues() {
    if (filterElement.listItems.any((element) => element.parentCategoryId != null)) {
      for (var elementChosen in FilterService.chosenCategoryList) {
        List<FindAllCategories$Query$Category> listTemp = [];
        for (var elementFilterItem in filterElement.listItems) {
          if (elementFilterItem.parentCategoryId.toString() == elementChosen.categoryFilter.categoryId) {
            listTemp.add(elementFilterItem);
          }
        }
        filterElement.listItemsWithNotifier.value = listTemp;
      }
    } else {
      filterElement.listItemsWithNotifier.value = filterElement.listItems;
    }
  }

  selectPreviouslyChosenValues() {
    for (var element in FilterService.chosenCategoryList) {
      if (element.categoryFilter.categoryId == filterElement.categoryFilter.categoryId) {
        if (element.filterType == FilterType.selectCategory) {
          filterElement.chosenItem.value = element.chosenItem.value;
        }
      }
    }
  }
}
