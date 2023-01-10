// ignore_for_file: prefer_typing_uninitialized_variables

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:i18next/i18next.dart';
import '../classes/filter_service.dart';
import '../navigation/routes.dart';
import '../screen_arguments/filter_arguments.dart';
import '../widgets/filter/filter_generator.dart';
import '../utils/themes.dart';
import '../widgets/navigation/appbar_search.dart';

class FilterScreen extends HookWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [AppbarSearch()],
      ),
      body: Padding(
        // Left and right side margins for the whole screen
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: _buildBody(
          context,
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    final i18next = I18Next.of(context);

    final basicSection = FilterService.mainCategories.firstWhere((element) => element.mainCategory.weight == 1);
    final techSection = FilterService.mainCategories.firstWhere((element) => element.mainCategory.weight == 2);
    final featuresSection = FilterService.mainCategories.firstWhere((element) => element.mainCategory.weight == 3);

    return SingleChildScrollView(
      child: Column(
        children: [
          //Basic section
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Text(
                i18next!.t(basicSection.mainCategory.name).toUpperCase(),
                style: CustomDarkTextStyle.h1(context),
              ),
            ),
          ),
          FilterGenerator(filterElements: basicSection.mainCategoryChildren),
          //Tech section
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Text(
                i18next.t(techSection.mainCategory.name).toUpperCase(),
                style: CustomDarkTextStyle.h1(context),
              ),
            ),
          ),
          FilterGenerator(filterElements: techSection.mainCategoryChildren),
          //Features section
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15),
              child: Text(
                i18next.t(featuresSection.mainCategory.name).toUpperCase(),
                style: CustomDarkTextStyle.h1(context),
              ),
            ),
          ),
          FilterGenerator(filterElements: featuresSection.mainCategoryChildren),
          //Search button
          Padding(
            padding: const EdgeInsets.only(top: 10, bottom: 20),
            child: TextButton.icon(
              icon: const FaIcon(FontAwesomeIcons.magnifyingGlass, color: lightTextColor),
              style: TextButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
                backgroundColor: orangeThemeColor,
              ),
              onPressed: () {
                // print(FilterService.getAdWhereInput());
                Navigator.pushNamed(
                  context,
                  filterResultsScreenRoute,
                  arguments: FilterArguments(
                    // saveSearchBool: false,
                    adWhereInput: jsonDecode(
                      FilterService.getAdWhereInput(),
                    ),
                  ),
                );
              },
              label: Text(
                i18next.t("i18n:search").toUpperCase(),
                style: const TextStyle(color: lightTextColor, fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
