import 'package:i18next/i18next.dart';

class DropdownSortingItems {
  final I18Next i18next;
  late String fullSortName;
  late String shortSortName;

  DropdownSortingItems(String sort, this.i18next) {
    if (sort == "asc") {
      fullSortName = i18next.t('i18n:sortingAscending');
      shortSortName = sort;
    }
    if (sort == "desc") {
      fullSortName = i18next.t('i18n:sortingDescending');
      shortSortName = sort;
    }
  }
}
