import 'dart:convert';
import 'package:flutter/material.dart';
import '../authentication/authentication_service.dart';
import '../classes/categories.dart';
import '../classes/category.dart';
import '../classes/category_select.dart';
import '../classes/main_categories.dart';
import '../classes/vocabulary_service.dart';
import '../data/graphql/schema.generated.dart';
import '../utils/enums.dart';

class FilterService {
  //Home category
  static FindCategoryByName$Query$Category? homeCategory;
  //Basic, Tech and Features categories (Quick isn't needed anymore)
  static List<MainCategories> mainCategories = [];
  //List of chosen Category types ready which are used for creating AdWhereInput
  static List<Category> chosenCategoryList = [];
  //Main category Quick that holds filter elements for homepage
  static MainCategories? mainCategoryQuick;

  static late MainCategories basicSection;
  static late MainCategories techSection;
  static late MainCategories featuresSection;

  //Searches for Quick category that always has weight 0 - not needed anymore
  // static MainCategories getHomepageFilterCategory() {
  //   final homepageFilterCategory = mainCategories.firstWhere((element) => element.mainCategory.weight == 0);
  //   return homepageFilterCategory;
  // }
  static bool showAdsWithPictures = false;

  //Creating AdWhereInput string
  static String getAdWhereInput() {
    //Ad + range + int(price)
    List<Category> listAdRange = [];
    for (var element in chosenCategoryList) {
      if (element.vocabulary.model == Model.ad.value && element.filterType == FilterType.rangeInt) {
        listAdRange.add(element);
      }
    }

    //AdAuto + select (model, condition, fuel,...)
    List<Category> listAdAutoSelect = [];
    for (var element in chosenCategoryList) {
      if (element.filterType == FilterType.selectCategory) {
        listAdAutoSelect.add(element);
      } else if (element.chosenItemInt != null) {
        listAdAutoSelect.add(element);
      }
    }

    //AdAuto + range + int (km, year,...)
    List<Category> listAdAutoRange = [];
    for (var element in chosenCategoryList) {
      if (element.vocabulary.model == Model.adAuto.value && element.filterType == FilterType.rangeInt) {
        listAdAutoRange.add(element);
      }
    }

    //AdAuto + checkbox + bool (first owner, garaged,...)
    List<Category> listAdAutoCheckboxBoolean = [];
    for (var element in chosenCategoryList) {
      if (element.filterType == FilterType.checkboxBool) {
        listAdAutoCheckboxBoolean.add(element);
      }
    }

    //AdAuto + checkbox + Category (colors, body type, air conditioning...)
    List<Category> listAdAutoCheckboxCategory = [];
    for (var element in chosenCategoryList) {
      if (element.filterType == FilterType.checkboxCategory && element.listChosenCheckboxCategoryItems.isNotEmpty) {
        listAdAutoCheckboxCategory.add(element);
      }
    }

    bool adRangeBool = listAdRange.isNotEmpty;
    bool adAutoSelectBool = listAdAutoSelect.isNotEmpty;
    bool adAutoRangeBool = listAdAutoRange.isNotEmpty;
    bool adAutoCheckboxBooleanBool = listAdAutoCheckboxBoolean.isNotEmpty;
    bool adAutoCheckboxCategoryBool = listAdAutoCheckboxCategory.isNotEmpty;
    bool adAutoBool = adAutoRangeBool || adAutoSelectBool || adAutoCheckboxCategoryBool || adAutoCheckboxBooleanBool;

    Map<String, dynamic> jsonAdWhereInput = {};

    if (adRangeBool) {
      for (var elementAdRange in listAdRange) {
        if (elementAdRange.rangeFrom != null && elementAdRange.rangeTo != null) {
          jsonAdWhereInput[elementAdRange.vocabulary.attribute] = {'gte': elementAdRange.rangeFrom, 'lte': elementAdRange.rangeTo};
        } else if (elementAdRange.rangeFrom != null) {
          jsonAdWhereInput[elementAdRange.vocabulary.attribute] = {'gte': elementAdRange.rangeFrom};
        } else if (elementAdRange.rangeTo != null) {
          jsonAdWhereInput[elementAdRange.vocabulary.attribute] = {'lte': elementAdRange.rangeTo};
        }
      }
    }
    if (adAutoBool) {
      ValueNotifier<Map<String, dynamic>> adAutoIs = ValueNotifier<Map<String, dynamic>>({});

      jsonAdWhereInput["ad_auto"] = {"is": adAutoIs.value};

      if (adAutoSelectBool) {
        for (var element in listAdAutoSelect) {
          if (element.vocabulary.dataType == DataType.int) {
            adAutoIs.value[element.vocabulary.attribute] = {"equals": element.chosenItemInt};
          }
          if (element.vocabulary.dataType == DataType.category) {
            adAutoIs.value[element.vocabulary.attribute] = {"equals": int.parse(element.chosenItem.value!.categoryId)};
          }
        }
      }
      if (adAutoRangeBool) {
        for (var elementAdAutoRange in listAdAutoRange) {
          if (elementAdAutoRange.rangeFrom != null && elementAdAutoRange.rangeTo != null) {
            adAutoIs.value[elementAdAutoRange.vocabulary.attribute] = {'gte': elementAdAutoRange.rangeFrom, 'lte': elementAdAutoRange.rangeTo};
          } else if (elementAdAutoRange.rangeFrom != null) {
            adAutoIs.value[elementAdAutoRange.vocabulary.attribute] = {'gte': elementAdAutoRange.rangeFrom};
          } else if (elementAdAutoRange.rangeTo != null) {
            adAutoIs.value[elementAdAutoRange.vocabulary.attribute] = {'lte': elementAdAutoRange.rangeTo};
          }
        }
      }
      if (adAutoCheckboxBooleanBool) {
        for (var elementAdAutoCheckbox in listAdAutoCheckboxBoolean) {
          adAutoIs.value[elementAdAutoCheckbox.vocabulary.attribute] = {'equals': true};
        }
      }
      if (adAutoCheckboxCategoryBool) {
        List<Map<String, dynamic>> adAutoIsAnd = [];
        List<Map<String, dynamic>> adAutoIsOrs = [];
        for (var elementCheckboxCategory in listAdAutoCheckboxCategory) {
          List<Map<String, dynamic>> adAutoIsOrChildren = [];
          for (var i = 0; i < elementCheckboxCategory.listChosenCheckboxCategoryItems.length; i++) {
            adAutoIsOrChildren.add({
              elementCheckboxCategory.vocabulary.attribute: {'equals': int.parse(elementCheckboxCategory.listChosenCheckboxCategoryItems[i].categoryId)}
            });
          }
          adAutoIsOrs.add({"OR": adAutoIsOrChildren});
        }
        adAutoIsAnd.add({"AND": adAutoIsOrs});
        adAutoIs.value.addAll(adAutoIsAnd[0]);
      }
    }
    return jsonEncode(jsonAdWhereInput);
  }

  static void createCategoriesTree(List<FindAllCategories$Query$Category> categories) {
    //Add main categories to list (Basic, Tech, Features) - all except "Quick"
    FilterService.mainCategories.clear();
    for (var element in categories) {
      if (element.parentCategoryId.toString() == homeCategory!.categoryId && element.name != "Quick") {
        MainCategories main = MainCategories(element);
        FilterService.mainCategories.add(main);
      }
    }

    //Add categories to main categories (e.g. AdAutoVehicleType to Basic)
    for (var mainElement in FilterService.mainCategories) {
      for (var categoryElement in categories) {
        //e.g. checks model_cid's parent_id category with Basics main category id and connects them
        if (categoryElement.parentCategoryId.toString() == mainElement.mainCategory.categoryId) {
          // ignore: prefer_typing_uninitialized_variables
          var newCategory;
          for (var vocabulary in VocabularyService.vocabularies) {
            if (vocabulary.attribute == categoryElement.name) {
              // newCategory.setVocabulary(vocabulary);
              switch (vocabulary.inputType) {
                case InputType.select:
                  switch (vocabulary.dataType) {
                    case DataType.category:
                      newCategory = Category(FilterType.selectCategory, categoryElement, vocabulary);
                      break;
                    case DataType.int:
                      newCategory = Category(FilterType.selectInt, categoryElement, vocabulary);
                      break;
                    case DataType.dateTime:
                      // ignore: todo
                      // TODO: Handle this case.
                      break;
                    case DataType.boolean:
                      // ignore: todo
                      // TODO: Handle this case.
                      break;
                  }
                  break;
                case InputType.checkbox:
                  switch (vocabulary.dataType) {
                    case DataType.category:
                      newCategory = Category(FilterType.checkboxCategory, categoryElement, vocabulary);
                      break;
                    case DataType.int:
                      // ignore: todo
                      // TODO: Handle this case.
                      break;
                    case DataType.dateTime:
                      // ignore: todo
                      // TODO: Handle this case.
                      break;
                    case DataType.boolean:
                      newCategory = Category(FilterType.checkboxBool, categoryElement, vocabulary);
                      break;
                  }
                  break;
                case InputType.range:
                  if (vocabulary.dataType == DataType.int) {
                    newCategory = Category(FilterType.rangeInt, categoryElement, vocabulary);
                  } else if (vocabulary.dataType == DataType.dateTime) {
                    newCategory = Category(FilterType.rangeDatetime, categoryElement, vocabulary);
                  }
                  break;
              }
              for (var filterItem in Categories.categoriesList) {
                if (filterItem.code == newCategory.vocabulary.categoryCode) {
                  newCategory.listItems.add(filterItem);
                  if (newCategory.filterType == FilterType.selectCategory && checkIfParent(filterItem)) {
                    CategorySelect categorySelect = CategorySelect(filterItem);
                    for (var dependableChild in Categories.categoriesList) {
                      if (dependableChild.parentCategoryId.toString() == categorySelect.filterItemCategory.categoryId) {
                        categorySelect.listDependableChildren.add(dependableChild);
                      }
                    }
                    newCategory.listCategoriesForSelect.add(categorySelect);
                  }
                }
              }
            }
          }
          mainElement.addChildren(newCategory);
        }
      }
      //Sort filter elements by weight
      mainElement.mainCategoryChildren.sort(
        (a, b) => a.categoryFilter.weight!.compareTo(b.categoryFilter.weight!),
      );
    }
    //Get main category for homepage (Quick) - not needed anymore
    // mainCategoryQuick = getHomepageFilterCategory();

    basicSection = FilterService.mainCategories.firstWhere((element) => element.mainCategory.weight == 1);
    techSection = FilterService.mainCategories.firstWhere((element) => element.mainCategory.weight == 2);
    featuresSection = FilterService.mainCategories.firstWhere((element) => element.mainCategory.weight == 3);
  }

  static bool checkIfParent(FindAllCategories$Query$Category chosenItem) {
    return Categories.categoriesList.any((element) => chosenItem.categoryId == element.parentCategoryId.toString());
  }

  static Map<String, dynamic> createSaveListMap(String searchParams) {
    Map<String, dynamic> newListMap = {};
    newListMap.addAll({
      "list_type": ListType.savedSearches.value,
      "title": "Saved Search",
      "search_params": searchParams,
      "user": {
        "connect": {"user_sub": AuthenticationService.userSub}
      }
    });
    return newListMap;
  }

  static List<Category> createCategoryListFromSavedSearchParams(Map<String, dynamic> searchParamsMap) {
    List<Category> newCategories = [];
    // print(searchParamsMap);
    searchParamsMap.forEach((key, value) {
      final newCategory = findMatchingVocabularyAndCreateCategory(key, value);
      if (newCategory != null) {
        newCategories.add(newCategory);
      }
    });
    if (searchParamsMap.containsKey('ad_auto')) {
      Map<String, dynamic> subMapAdAuto = searchParamsMap['ad_auto']['is'];
      subMapAdAuto.forEach((key, value) {
        final newCategory = findMatchingVocabularyAndCreateCategory(key, value);
        if (newCategory != null) {
          newCategories.add(newCategory);
        }
      });
      if (subMapAdAuto.containsKey('OR')) {
        final tempMap = <String, dynamic>{};
        subMapAdAuto.forEach((key, value) {
          key == "OR" ? tempMap.addAll({key: value}) : "";
        });
        tempMap.forEach((key, value) {
          List<dynamic> listOfMapsInsideOr = subMapAdAuto['OR'];
          // print(listOfMapsInsideOr);
          final newCategory = findMatchingVocabularyAndCreateCategory(listOfMapsInsideOr[0].keys.toList().first, listOfMapsInsideOr[0].values.toList().first);
          if (newCategory != null) {
            newCategory.listChosenCheckboxCategoryItems.clear();
            for (var mapInsideOr in listOfMapsInsideOr) {
              mapInsideOr.forEach((key, value) {
                final chosenItem = Categories().findCategoryById(value['equals'].toString());
                if (chosenItem != null) {
                  newCategory.listChosenCheckboxCategoryItems.add(chosenItem);
                }
              });
            }
            newCategories.add(newCategory);
          }
        });
      }
      if (subMapAdAuto.containsKey('AND')) {
        final tempMapAnd = <String, dynamic>{};
        subMapAdAuto.forEach((key, value) {
          key == "AND" ? tempMapAnd.addAll({key: value}) : "";
        });
        tempMapAnd.forEach((key, value) {
          List<dynamic> listOfMapsInsideAnd = subMapAdAuto['AND'];
          for (var mapInsideAnd in listOfMapsInsideAnd) {
            if (mapInsideAnd.containsKey('OR')) {
              final tempMap = <String, dynamic>{};
              mapInsideAnd.forEach((key, value) {
                key == "OR" ? tempMap.addAll({key: value}) : "";
              });
              tempMap.forEach((key, value) {
                List<dynamic> listOfMapsInsideOr = mapInsideAnd['OR'];
                // print(listOfMapsInsideOr);
                final newCategory =
                    findMatchingVocabularyAndCreateCategory(listOfMapsInsideOr[0].keys.toList().first, listOfMapsInsideOr[0].values.toList().first);
                if (newCategory != null) {
                  newCategory.listChosenCheckboxCategoryItems.clear();
                  for (var mapInsideOr in listOfMapsInsideOr) {
                    mapInsideOr.forEach((key, value) {
                      final chosenItem = Categories().findCategoryById(value['equals'].toString());
                      if (chosenItem != null) {
                        newCategory.listChosenCheckboxCategoryItems.add(chosenItem);
                      }
                    });
                  }
                  newCategories.add(newCategory);
                }
              });
            }
          }
        });
      }
    }
    return newCategories;
  }

  static Category? findMatchingVocabularyAndCreateCategory(String key, dynamic value) {
    Category? newCategory;
    for (var elementVocabulary in VocabularyService.vocabularies) {
      if (elementVocabulary.attribute == key) {
        switch (elementVocabulary.inputType) {
          case InputType.select:
            switch (elementVocabulary.dataType) {
              case DataType.category:
                for (var elementMainCategory in mainCategories) {
                  for (var elementMainCategoryChild in elementMainCategory.mainCategoryChildren) {
                    if (elementMainCategoryChild.categoryFilter.name == key) {
                      final chosenItem = Categories().findCategoryById(value['equals'].toString());
                      final duplicateCategory = elementMainCategoryChild;
                      if (chosenItem != null) {
                        duplicateCategory.chosenItem.value = chosenItem;
                      }
                      newCategory = duplicateCategory;
                    }
                  }
                }
                break;
              case DataType.int:
                for (var elementMainCategory in mainCategories) {
                  for (var elementMainCategoryChild in elementMainCategory.mainCategoryChildren) {
                    if (elementMainCategoryChild.categoryFilter.name == key) {
                      int chosenItemInt = value['equals'];
                      final duplicateCategory = elementMainCategoryChild;
                      duplicateCategory.chosenItemInt = chosenItemInt;
                      newCategory = duplicateCategory;
                    }
                  }
                }
                break;
              case DataType.dateTime:
                // ignore: todo
                // TODO: Handle this case.
                break;
              case DataType.boolean:
                // ignore: todo
                // TODO: Handle this case.
                break;
            }
            break;
          case InputType.checkbox:
            switch (elementVocabulary.dataType) {
              case DataType.category:
                for (var elementMainCategory in mainCategories) {
                  for (var elementMainCategoryChild in elementMainCategory.mainCategoryChildren) {
                    if (elementMainCategoryChild.categoryFilter.name == key) {
                      final chosenItem = Categories().findCategoryById(value['equals'].toString());
                      final duplicateCategory =
                          Category(FilterType.checkboxCategory, elementMainCategoryChild.categoryFilter, elementMainCategoryChild.vocabulary);
                      // duplicateCategory.setVocabulary(elementMainCategoryChild.vocabulary);
                      if (chosenItem != null) {
                        duplicateCategory.listChosenCheckboxCategoryItems.add(chosenItem);
                      }
                      newCategory = duplicateCategory;
                    }
                  }
                }
                break;
              case DataType.int:
                // ignore: todo
                // TODO: Handle this case.
                break;
              case DataType.dateTime:
                // ignore: todo
                // TODO: Handle this case.
                break;
              case DataType.boolean:
                for (var elementMainCategory in mainCategories) {
                  for (var elementMainCategoryChild in elementMainCategory.mainCategoryChildren) {
                    if (elementMainCategoryChild.categoryFilter.name == key) {
                      final duplicateCategory = elementMainCategoryChild;
                      newCategory = duplicateCategory;
                    }
                  }
                }
                break;
            }
            break;
          case InputType.range:
            switch (elementVocabulary.dataType) {
              case DataType.category:
                // ignore: todo
                // TODO: Handle this case.
                break;
              case DataType.int:
                for (var elementMainCategory in mainCategories) {
                  for (var elementMainCategoryChild in elementMainCategory.mainCategoryChildren) {
                    if (elementMainCategoryChild.categoryFilter.name == key) {
                      int? gte;
                      int? lte;
                      if (value.containsKey('gte')) {
                        gte = value['gte'];
                      }
                      if (value.containsKey('lte')) {
                        lte = value['lte'];
                      }
                      final duplicateCategory = elementMainCategoryChild;
                      duplicateCategory.rangeFrom = gte;
                      duplicateCategory.rangeTo = lte;
                      newCategory = duplicateCategory;
                    }
                  }
                }
                break;
              case DataType.dateTime:
                // ignore: todo
                // TODO: Handle this case.
                break;
              case DataType.boolean:
                // ignore: todo
                // TODO: Handle this case.
                break;
            }
            break;
        }
      }
    }
    return newCategory;
  }
}
