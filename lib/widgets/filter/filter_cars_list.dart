// ignore_for_file: unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:i18next/i18next.dart';
import '../../data/repos/ads/findAllAdsMyAds.dart';
import '../../data/repos/ads/findAllAdsWhere.dart';
import '../../data/repos/categories/findAllCategories.dart';
import '../../utils/themes.dart';
import '../../widgets/filter/filter_results_save_search.dart';
import '../../authentication/user_data.dart';
import '../../data/graphql/schema.generated.dart';
import '../../screen_arguments/filter_arguments.dart';
import '../shared/horizontal_car_tile.dart';

class FilterCarsList extends HookWidget {
  final FilterArguments? filterArguments;
  final bool myAdsBool;
  final bool filterBool;
  final bool savedSearchBool;
  final bool isSold;

  const FilterCarsList({
    Key? key,
    this.filterArguments,
    this.myAdsBool = false,
    this.filterBool = false,
    this.savedSearchBool = false,
    this.isSold = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final i18next = I18Next.of(context);
    final userSub = UserData.getUserSub();
    final QueryResult<Object?> filterAdsResult;

    //filter ads
    if (filterBool) {
      filterAdsResult = findAllAdsWhere(filterArguments!.adWhereInput);
    }
    //saved search ads
    else if (savedSearchBool) {
      filterAdsResult = findAllAdsWhere(filterArguments!.adWhereInput);
    }
    //my ads
    else {
      filterAdsResult = findAllAdsMyAds(userSub, isSold);
    }
    final result = filterAdsResult;

    if (result.hasException) {
      return Text(result.exception.toString());
    }

    if (result.isLoading) {
      return const Center(child: CircularProgressIndicator.adaptive());
    }

    if (result.data == null) {
      return Center(
        child: Text(
          "No data",
          style: CustomDarkTextStyle.bodyMedium(context),
        ),
      );
    }

    final ads = FindAllAds$Query.fromJson(result.data!).findAllAds;

    final categoriesResult = findAllCategories();
    if (categoriesResult.hasException) {
      return Text(categoriesResult.exception.toString());
    }

    if (categoriesResult.isLoading) {
      return const Center(child: CircularProgressIndicator.adaptive());
    }

    if (categoriesResult.data == null) {
      return Center(
        child: Text(
          i18next!.t("i18n:noData"),
          style: CustomDarkTextStyle.bodyMedium(context),
        ),
      );
    }

    final categories = FindAllCategories$Query.fromJson(categoriesResult.data!).findAllCategories;

    return Column(
      children: [
        filterBool
            //filter results page
            ? Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                child: FilterResultsSaveSearch(filterArguments!, ads.length),
              )
            //other pages (e.g. my ads)
            : Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: // Number of ads counter
                    Row(
                  children: [
                    Text(
                      i18next!.t('i18n:numberOfAds').toUpperCase(),
                      style: CustomDarkTextStyle.bodyLarge(context),
                    ),
                    Text(
                      ": ${ads.length}",
                      style: CustomDarkTextStyle.bodyLarge(context),
                    )
                  ],
                ),
              ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemCount: ads.length,
          itemBuilder: (context, index) {
            final ad = ads[index];
            return Container(
              height: 160,
              alignment: Alignment.center,
              margin: const EdgeInsets.only(bottom: 15),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(width: 0.5),
                borderRadius: const BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: HorizontalCarTile(
                ad: ad,
                categories: categories,
                isCompareIconVisible: true,
                isFavoriteIconVisible: true,
                isDeleteIconVisible: false,
                filterArguments: filterArguments,
              ),
            );
          },
        ),
      ],
    );
  }
}
