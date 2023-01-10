import 'package:flutter/cupertino.dart';
import 'package:mobile/utils/enums.dart';
import '../classes/category_select.dart';
import '../classes/vocabularies.dart';
import '../data/graphql/schema.generated.graphql.dart';

class Category {
  //Filter type
  FilterType filterType;
  //e.g. AdAutoMake
  FindAllCategories$Query$Category categoryFilter;
  //corresponding vocabulary
  Vocabulary vocabulary;
  //e.g. Audi, BMW, A1, TDI, Yellow, Black, Air condition...
  List<FindAllCategories$Query$Category> listItems = [];
  // e.g. Audi, BMW, A1, TDI, Yellow, Black, Air condition...
  ValueNotifier<List<FindAllCategories$Query$Category>> listItemsWithNotifier = ValueNotifier<List<FindAllCategories$Query$Category>>([]);
  //e.g. Created primarily for dependable dropdowns: Brands with list of Models, Models with list of Variants,...
  List<CategorySelect?> listCategoriesForSelect = [];
  //for select+AdAuto categories (Audi, BMW,...)
  ValueNotifier<FindAllCategories$Query$Category?> chosenItem = ValueNotifier<FindAllCategories$Query$Category?>(null);
  //for select+int categories (nr. of doors, nr. of seats)
  int? chosenItemInt;
  //for ranged categories (km, year,...)
  int? rangeFrom;
  int? rangeTo;
  //for determining what checkboxes to tick after refreshing or returning back to filter (checkbox + Category)
  // int? boolIndex;
  //e.g. Yellow, Black, Air condition, SUV, Coupe...
  List<FindAllCategories$Query$Category> listChosenCheckboxCategoryItems = [];

  Category(this.filterType, this.categoryFilter, this.vocabulary);
}
