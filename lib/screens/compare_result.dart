import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:i18next/i18next.dart';
import '../utils/themes.dart';
import '../widgets/compare/attributes_column.dart';
import '../data/graphql/schema.generated.graphql.dart';
import '../screen_arguments/compare_screen_arguments.dart';
import '../utils/formatters.dart';
import '../utils/globals.dart';
import '../widgets/compare/labels_column.dart';
import '../screen_arguments/compare_column_arguments.dart';
import '../widgets/ad_details/recommended_list.dart';
import '../widgets/navigation/navigation_menu.dart';
import '../widgets/shared/price_rating/price_indicator.dart';
import '../widgets/shared/price_rating/price_summary.dart';

class CompareResultScreen extends HookWidget {
  final CompareScreenArguments compareScreenArguments;
  const CompareResultScreen({Key? key, required this.compareScreenArguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: _buildBody(context),
      bottomNavigationBar: const NavigationMenu(selectedIndex: 0),
    );
  }

  Widget _buildBody(BuildContext context) {
    final i18next = I18Next.of(context);

    final List<AdWithAdAutoFragmentMixin> ads = compareScreenArguments.ads;
    final List<FindAllCategories$Query$Category> categories = compareScreenArguments.categories;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                i18next!.t("i18n:compare"),
                style: CustomDarkTextStyle.bodyLarge(context),
              ),
            ),
            // Summary with photos
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // First ad
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Car image
                    SizedBox(
                      height: 120,
                      width: 160,
                      child: ads[0].files == null || ads[0].files!.isEmpty
                          ? const Center(
                              child: Icon(
                                Icons.no_photography_rounded,
                                size: 40,
                              ),
                            )
                          : CachedNetworkImage(
                              imageUrl: imageSourceAddress + ads[0].files!.first.path,
                              progressIndicatorBuilder: (context, url, downloadProgress) => Center(
                                child: SizedBox(
                                  width: 40.0,
                                  height: 40.0,
                                  child: CircularProgressIndicator(value: downloadProgress.progress),
                                ),
                              ),
                              errorWidget: (context, url, error) => const Icon(Icons.error),
                            ),
                    ),
                    // Ad title label
                    Text(
                      ads[0].title,
                      style: CustomDarkTextStyle.bodyLarge(context),
                    ),
                    // Price indicator
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: ads[0].priceEurocent == null
                          ? const Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: SizedBox.shrink(),
                            )
                          : Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: PriceSummary(
                                    priceRating: ads[0].priceRating,
                                    textStyle: CustomDarkTextStyle.bodyMedium(context),
                                  ),
                                ),
                                PriceIndicator(priceRating: ads[0].priceRating),
                              ],
                            ),
                    ),
                    // Price label
                    Text(
                      style: CustomDarkTextStyle.bodyLarge(context),
                      ads[0].priceEurocent == null
                          // when price is null
                          ? "${i18next.t("i18n:price")} ${i18next.t("i18n:notProvided")}"
                          // when price exists
                          : formatCurrencyEurocent.format(ads[0].priceEurocent),
                    ),
                  ],
                ),
                // Second ad
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Car image
                    SizedBox(
                      height: 120,
                      width: 160,
                      child: ads[1].files == null || ads[1].files!.isEmpty
                          ? const Center(
                              child: Icon(
                                Icons.no_photography_rounded,
                                size: 40,
                              ),
                            )
                          : CachedNetworkImage(
                              imageUrl: imageSourceAddress + ads[1].files!.first.path,
                              progressIndicatorBuilder: (context, url, downloadProgress) => Center(
                                child: SizedBox(
                                  width: 40.0,
                                  height: 40.0,
                                  child: CircularProgressIndicator(value: downloadProgress.progress),
                                ),
                              ),
                              errorWidget: (context, url, error) => const Icon(Icons.error),
                            ),
                    ),
                    // Ad title label
                    Text(
                      ads[1].title,
                      style: CustomDarkTextStyle.bodyLarge(context),
                    ),
                    // Price indicator
                    Padding(
                      padding: const EdgeInsets.only(top: 5),
                      child: ads[1].priceEurocent == null
                          ? const Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: SizedBox.shrink(),
                            )
                          : Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: PriceSummary(
                                    priceRating: ads[1].priceRating,
                                    textStyle: CustomDarkTextStyle.bodyMedium(context),
                                  ),
                                ),
                                PriceIndicator(priceRating: ads[1].priceRating),
                              ],
                            ),
                    ),
                    // Price label
                    Text(
                      style: CustomDarkTextStyle.bodyLarge(context),
                      ads[1].priceEurocent == null
                          // when price is null
                          ? "${i18next.t("i18n:price")} ${i18next.t("i18n:notProvided")}"
                          // when price exists
                          : formatCurrencyEurocent.format(ads[1].priceEurocent),
                    ),
                  ],
                ),
              ],
            ),
            // Basic details
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                i18next.t("i18n:basic"),
                style: CustomDarkTextStyle.bodyLarge(context),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: _getColumns(ads, categories, "Basic"),
            ),
            // Tech details
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                i18next.t("i18n:tech"),
                style: CustomDarkTextStyle.bodyLarge(context),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: _getColumns(ads, categories, "Tech"),
            ),
            // Features
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                i18next.t("i18n:features"),
                style: CustomDarkTextStyle.bodyLarge(context),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: _getColumns(ads, categories, "Features"),
            ),
            // Recommended label
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                i18next.t("i18n:recommendedAds"),
                style: CustomDarkTextStyle.bodyLarge(context),
              ),
            ),
            // Recommended ads
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: RecommendedList(),
            ),
          ],
        ),
      ),
    );
  }
}

// returns a list of columns to be presented in a compare row - includes labels column and dynamically build attributes columns for all the ads
List<Widget> _getColumns(List<AdWithAdAutoFragmentMixin> ads, List<FindAllCategories$Query$Category> categories, String vehicleAttributeCategoryName) {
  List<Widget> adColumns = [];
  // first column should be the one with labels
  adColumns.add(
    Expanded(
      flex: 4,
      child: LabelsColumn(categories: categories, vehicleAttributeCategoryName: vehicleAttributeCategoryName),
    ),
  );
  // next we add as many columns as there are ads selected for comparison (for now always 2)
  for (AdWithAdAutoFragmentMixin ad in ads) {
    CompareColumnArguments compareColumnArguments = CompareColumnArguments(ad, categories, vehicleAttributeCategoryName);
    adColumns.add(
      Expanded(
        flex: 3,
        child: AttributesColumn(compareColumnArguments: compareColumnArguments),
      ),
    );
  }
  return adColumns;
}
