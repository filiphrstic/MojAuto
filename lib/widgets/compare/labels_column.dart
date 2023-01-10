import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:i18next/i18next.dart';
import '../../utils/themes.dart';
import '../../data/graphql/schema.generated.graphql.dart';

class LabelsColumn extends HookWidget {
  final List<FindAllCategories$Query$Category> categories;
  final String vehicleAttributeCategoryName;
  const LabelsColumn({Key? key, required this.categories, required this.vehicleAttributeCategoryName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final I18Next i18next = I18Next.of(context)!;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: _getLabels(categories, vehicleAttributeCategoryName, i18next, context),
    );
  }
}

List<Widget> _getLabels(List<FindAllCategories$Query$Category> categories, String vehicleAttributeCategoryName, I18Next i18next, BuildContext context) {
  String attributesCategoryId = categories.firstWhere((element) => (element.code == "VehicleAttributes" && element.name == "Compare")).categoryId;
  String attributesChildCategoryId = categories
      .firstWhere((element) => (element.parentCategoryId.toString() == attributesCategoryId && element.name == vehicleAttributeCategoryName))
      .categoryId;
  List<FindAllCategories$Query$Category> attributes = categories.where((element) => element.parentCategoryId.toString() == attributesChildCategoryId).toList();

  List<Widget> listOfColumnChildren = [];
  for (FindAllCategories$Query$Category attribute in attributes) {
    listOfColumnChildren.add(
      Text(
        i18next.t("i18n:${attribute.name}").toUpperCase(),
        style: CustomDarkTextStyle.bodyLarge(context),
      ),
    );
    // adds a line under the attribute
    listOfColumnChildren.add(
      const Divider(
        color: darkGrayBackgroundColor,
        height: 10,
      ),
    );
  }
  return listOfColumnChildren;
}
