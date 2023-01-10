import 'dart:convert';

import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:i18next/i18next.dart';
import '../../data/repos/categories/findAllCategories.dart';
import '../../classes/filter_service.dart';
import '../../screen_arguments/filter_arguments.dart';
import '../../widgets/shared/vertical_car_tile.dart';
import '../../data/graphql/schema.generated.dart';
import '../../navigation/routes.dart';
import '../../screen_arguments/ad_details_arguments.dart';
import '../../utils/themes.dart';

/// Builds recommended ads list
class RecommendedList extends HookWidget {
  const RecommendedList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selectedIndex = useState(0);
    final I18Next i18next = I18Next.of(context)!;
    final pageController = useState(
      //viewportFraction allows us to add margin while changing pages in a PageView but still keep pages fullscreen
      PageController(viewportFraction: 1.05),
    );

    final readAdsResult = useQuery(
      QueryOptions(
        document: FindTrendingAdsQuery().document,
        fetchPolicy: FetchPolicy.cacheFirst,
      ),
    );

    final adsResult = readAdsResult.result;

    if (adsResult.hasException) {
      return Text(adsResult.exception.toString());
    }

    if (adsResult.isLoading) {
      return const Center(child: CircularProgressIndicator.adaptive());
    }

    if (adsResult.data == null) {
      return Center(
        child: Text(
          i18next.t("i18n:noData"),
          style: CustomDarkTextStyle.bodyMedium(context),
        ),
      );
    }

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
          i18next.t("i18n:noData"),
          style: CustomDarkTextStyle.bodyMedium(context),
        ),
      );
    }

    final trendingAds = FindAllAds$Query.fromJson(adsResult.data!).findAllAds;
    final categories = FindAllCategories$Query.fromJson(categoriesResult.data!).findAllCategories;

    final numberOfPages = (trendingAds.length / 2).ceil();

    return Center(
      // display the widget only when there are items in the list
      child: trendingAds.isNotEmpty
          ? SizedBox(
              height: 270,
              child: Column(
                children: [
                  SizedBox(
                    height: 240,
                    // pages for pairs of two blog posts
                    child: PageView.builder(
                      itemCount: (trendingAds.length / 2).ceil(),
                      controller: pageController.value,
                      itemBuilder: (context, index) {
                        // getting two ads displayed on current page
                        final firstAd = trendingAds[index + (index * 1)];
                        final secondAd = trendingAds[index + (index * 1) + 1];
                        // adds a margin between pages when scrolling
                        return FractionallySizedBox(
                          widthFactor: 1 / pageController.value.viewportFraction,
                          // two ads per page
                          child: GridView.count(
                            childAspectRatio: (160 / 210),
                            crossAxisCount: 2,
                            crossAxisSpacing: 20,
                            children: [
                              // display first ad
                              InkWell(
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    border: Border.all(width: 0.5),
                                  ),
                                  child: VerticalCarTile(
                                    ad: firstAd,
                                    categories: categories,
                                    isCompareIconVisible: false,
                                    isFavoriteIconVisible: true,
                                    isDeleteIconVisible: false,
                                    filterArguments: FilterArguments(
                                      // saveSearchBool: false,
                                      adWhereInput: jsonDecode(
                                        FilterService.getAdWhereInput(),
                                      ),
                                    ),
                                  ),
                                ),
                                onTap: () => Navigator.pushNamed(
                                  context,
                                  adDetailsScreenRoute,
                                  arguments: AdDetailsArguments(firstAd.adId, firstAd, categories),
                                ),
                              ),
                              // limit to 1 element on the last page if the number of ads is odd
                              (trendingAds.length.isOdd && numberOfPages == index + 1)
                                  ? const SizedBox.shrink()
                                  // display second ad
                                  : InkWell(
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          border: Border.all(width: 0.5),
                                        ),
                                        child: VerticalCarTile(
                                          ad: secondAd,
                                          categories: categories,
                                          isCompareIconVisible: false,
                                          isFavoriteIconVisible: true,
                                          isDeleteIconVisible: false,
                                          filterArguments: FilterArguments(
                                            // saveSearchBool: false,
                                            adWhereInput: jsonDecode(
                                              FilterService.getAdWhereInput(),
                                            ),
                                          ),
                                        ),
                                      ),
                                      onTap: () => Navigator.pushNamed(
                                        context,
                                        adDetailsScreenRoute,
                                        arguments: AdDetailsArguments(secondAd.adId, secondAd, categories),
                                      ),
                                    )
                            ],
                          ),
                        );
                      },
                      onPageChanged: (int page) => {
                        selectedIndex.value = page,
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: SizedBox(
                      height: 20,
                      child: DotsIndicator(
                        dotsCount: numberOfPages,
                        position: selectedIndex.value.toDouble(),
                        decorator: const DotsDecorator(
                          activeColor: orangeThemeColor,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          : const SizedBox.shrink(),
    );
  }
}
