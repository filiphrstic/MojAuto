import 'package:flutter/foundation.dart';

enum ListType {
  favorites,
  savedSearches,
}

extension ListTypeExtension on ListType {
  String get name => describeEnum(this);
  int get value {
    switch (this) {
      case ListType.favorites:
        return 0;
      case ListType.savedSearches:
        return 1;
    }
  }
}

enum ViewType {
  grid,
  list,
}

extension ViewTypeExtension on ViewType {
  String get name => describeEnum(this);
  int get value {
    switch (this) {
      case ViewType.grid:
        return 0;
      case ViewType.list:
        return 1;
    }
  }
}

enum InputType {
  select,
  checkbox,
  range,
}

extension InputTypeExtension on InputType {
  String get name => describeEnum(this);
  String get value {
    switch (this) {
      case InputType.select:
        return "select";
      case InputType.checkbox:
        return "checkbox";
      case InputType.range:
        return "range";
    }
  }
}

enum DataType {
  category,
  int,
  dateTime,
  boolean,
}

extension DataTypeExtension on DataType {
  String get name => describeEnum(this);
  String get value {
    switch (this) {
      case DataType.category:
        return "Category";
      case DataType.int:
        return "int";
      case DataType.dateTime:
        return "DateTime";
      case DataType.boolean:
        return "boolean";
    }
  }
}

enum Model {
  ad,
  adAuto,
}

extension ModelExtension on Model {
  String get name => describeEnum(this);
  String get value {
    switch (this) {
      case Model.ad:
        return "Ad";
      case Model.adAuto:
        return "AdAuto";
    }
  }
}

enum FilterType {
  selectCategory,
  selectInt,
  checkboxCategory,
  checkboxBool,
  rangeInt,
  rangeDatetime,
}
