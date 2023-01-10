import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:validators/validators.dart';
import '../../data/graphql/schema.generated.graphql.dart';
import '../../screen_arguments/compare_column_arguments.dart';
import '../../utils/themes.dart';

class AttributesColumn extends HookWidget {
  final CompareColumnArguments compareColumnArguments;
  const AttributesColumn({Key? key, required this.compareColumnArguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AdWithAdAutoFragmentMixin ad = compareColumnArguments.ad;
    final List<FindAllCategories$Query$Category> categories = compareColumnArguments.categories;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: _getAttributes(ad, categories, compareColumnArguments.vehicleAttributeCategoryName, context),
    );
  }
}

List<Widget> _getAttributes(
    AdWithAdAutoFragmentMixin ad, List<FindAllCategories$Query$Category> categories, String vehicleAttributeCategoryName, BuildContext context) {
  String attributesCategoryId = categories.firstWhere((element) => (element.code == "VehicleAttributes" && element.name == "Compare")).categoryId;
  String basicAttributesCategoryId = categories
      .firstWhere((element) => (element.parentCategoryId.toString() == attributesCategoryId && element.name == vehicleAttributeCategoryName))
      .categoryId;
  List<FindAllCategories$Query$Category> basicAttributes =
      categories.where((element) => element.parentCategoryId.toString() == basicAttributesCategoryId).toList();

  List<Widget> listOfColumnChildren = [];
  for (FindAllCategories$Query$Category categoryAttribute in basicAttributes) {
    // get ad attributes as map
    Map<String, dynamic> adAttributes = ad.adAuto!.toJson();
    // category name is a key
    String key = categoryAttribute.name;
    // if key is of CategoryId type
    if (key.contains("cid")) {
      FindAllCategories$Query$Category? category = categories.firstWhereOrNull((element) => element.categoryId == adAttributes[key].toString());
      final String prop = ad.adAuto == null || adAttributes[key] == null || category == null ? "-" : category.name;
      listOfColumnChildren.add(
        Text(
          // this is temporary until we change transmission_type category names (to match the wireframe - the same is done on ad_details screen)
          prop.replaceAll(" transmission", "").replaceAll(" gearbox", "").replaceAll("Semi automatic", "Semi"),
          style: CustomDarkTextStyle.bodyLarge(context),
        ),
      );
      // if key is not of CategoryId type
    } else {
      // if adAuto or adAuto attribute is null then present a placeholder "-"
      if (ad.adAuto == null || adAttributes[key] == null) {
        listOfColumnChildren.add(
          Text(
            "-",
            style: CustomDarkTextStyle.bodyLarge(context),
          ),
        );
        // if attribute is not null - format and show it
      } else {
        // if attribute is boolean present "Yes"/"No"
        if (adAttributes[key] is bool) {
          listOfColumnChildren.add(
            adAttributes[key]
                ? Text(
                    "Yes",
                    style: CustomDarkTextStyle.bodyLarge(context),
                  )
                : Text(
                    "No",
                    style: CustomDarkTextStyle.bodyLarge(context),
                  ),
          );
          // if attribute is DateTime - show a formatted Date
        } else if (isDate(adAttributes[key].toString())) {
          listOfColumnChildren.add(
            Text(
              DateFormat('yyyy-MM-dd').format(DateTime.parse(adAttributes[key])),
              style: CustomDarkTextStyle.bodyLarge(context),
            ),
          );
          // if attribute is anything else (int/string) just present it
        } else {
          listOfColumnChildren.add(
            Text(
              adAttributes[key].toString(),
              style: CustomDarkTextStyle.bodyLarge(context),
            ),
          );
        }
      }
    }
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
