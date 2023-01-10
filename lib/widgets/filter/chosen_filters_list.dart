import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:i18next/i18next.dart';
import 'package:mobile/utils/themes.dart';
import '../../classes/category.dart';
import '../../utils/enums.dart';

class ChosenFiltersList extends HookWidget {
  //Here is a list of Category objects that contains all selected filters and their values
  final List<Category> chosenCategories;

  const ChosenFiltersList({Key? key, required this.chosenCategories}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final i18next = I18Next.of(context);
    return SizedBox(
      height: 30,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: chosenCategories.length,
        itemBuilder: ((context, index) {
          final chosenCategory = chosenCategories[index];
          //for select + category (e.g. model)
          if (chosenCategory.chosenItem.value != null) {
            return _buildChosenFilterTile(context, index, i18next!, chosenCategory, displayString: chosenCategory.chosenItem.value!.name);
            //for select + int (e.g. nr. of doors)
          } else if (chosenCategory.chosenItemInt != null) {
            return _buildChosenFilterTile(context, index, i18next!, chosenCategory, displayString: chosenCategory.chosenItemInt.toString());
            //for checkbox + Category (e.g. color exterior)
          } else if (chosenCategory.listChosenCheckboxCategoryItems.isNotEmpty) {
            return _buildChosenFilterTile(context, index, i18next!, chosenCategory);
            //for checkbox + bool
          } else if (chosenCategory.filterType == FilterType.checkboxBool) {
            return _buildChosenFilterTile(context, index, i18next!, chosenCategory);
            //for range + int
          } else if (chosenCategory.rangeFrom != null || chosenCategory.rangeTo != null) {
            if (chosenCategory.rangeFrom != null && chosenCategory.rangeTo != null) {
              return _buildChosenFilterTile(context, index, i18next!, chosenCategory, displayString: "${chosenCategory.rangeFrom} - ${chosenCategory.rangeTo}");
            } else {
              return Row(
                children: [
                  chosenCategory.rangeFrom != null
                      ? _buildChosenFilterTile(context, index, i18next!, chosenCategory, displayString: "≥ ${chosenCategory.rangeFrom}")
                      : chosenCategory.rangeTo != null
                          ? _buildChosenFilterTile(context, index, i18next!, chosenCategory, displayString: "≤ ${chosenCategory.rangeTo}")
                          : Container(),
                ],
              );
            }
          } else {
            return Container();
          }
        }),
      ),
    );
  }

  Widget _buildChosenFilterTile(BuildContext context, int index, I18Next i18next, Category chosenCategory, {String? displayString}) {
    return Padding(
      padding: (index == 0) ? const EdgeInsets.all(0) : const EdgeInsets.only(left: 10),
      child: Container(
        height: 30,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 0.8, color: lightGrayBackgroundColor),
          borderRadius: const BorderRadius.all(
            Radius.circular(3),
          ),
        ),
        child: (chosenCategory.filterType != FilterType.checkboxCategory)
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  children: [
                    (chosenCategory.filterType != FilterType.checkboxBool)
                        ? Row(
                            children: [
                              Text("${i18next.t("i18n:${chosenCategory.vocabulary.attribute}")}: "),
                              Text(
                                displayString!,
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ],
                          )
                        : Text(i18next.t("i18n:${chosenCategory.vocabulary.attribute}")),
                  ],
                ),
              )
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  children: [
                    Text("${i18next.t("i18n:${chosenCategory.vocabulary.attribute}")}: "),
                    ListView.builder(
                      shrinkWrap: true,
                      itemCount: chosenCategory.listChosenCheckboxCategoryItems.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (BuildContext context, int index) {
                        final itemsInsideOr = chosenCategory.listChosenCheckboxCategoryItems[index];
                        return Row(
                          children: [
                            (index == chosenCategory.listChosenCheckboxCategoryItems.length - 1)
                                ? Text(
                                    itemsInsideOr.name.toString(),
                                    style: Theme.of(context).textTheme.bodyMedium,
                                  )
                                : Text(
                                    "${itemsInsideOr.name}, ",
                                    style: Theme.of(context).textTheme.bodyMedium,
                                  )
                          ],
                        );
                      },
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
