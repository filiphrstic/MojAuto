import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:mobile/classes/filter_service.dart';
import 'package:mobile/utils/themes.dart';

class BadgeActiveFiltersCount extends HookWidget {
  const BadgeActiveFiltersCount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final badgeCounter = useState(FilterService.chosenCategoryList.length);
    return Badge(
      badgeColor: darkBlueThemeColor,
      position: BadgePosition.topEnd(top: -9, end: -11),
      badgeContent: Text(
        badgeCounter.value.toString(),
        style: CustomWhiteTextStyle.bodySmall(context),
      ),
      child: Image.asset(
        'assets/icons/other/filters.png',
        height: 16,
        width: 20,
      ),
    );
  }
}
