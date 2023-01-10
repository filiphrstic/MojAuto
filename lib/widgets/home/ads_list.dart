import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:i18next/i18next.dart';
import 'package:mobile/classes/filter_service.dart';
import '../../utils/themes.dart';
import '../../data/repos/ads/findAllAdsWhere.dart';
import '../../data/repos/categories/findAllCategories.dart';
import '../../data/graphql/schema.generated.dart';
import '../../screen_arguments/filter_arguments.dart';
import '../shared/horizontal_car_tile.dart';
import '../shared/vertical_car_tile.dart';

class AdsList extends HookWidget {
  final FilterArguments? filterArguments;
  final bool myAdsBool;
  final bool filterBool;
  final bool savedSearchBool;
  final bool isSold;

  final int columns;

  const AdsList({
    Key? key,
    this.filterArguments,
    this.myAdsBool = false,
    this.filterBool = false,
    this.savedSearchBool = false,
    this.isSold = false,
    this.columns = 1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final i18next = I18Next.of(context);
    final QueryResult<Object?> filterAdsResult;

    filterAdsResult = findAllAdsWhere(filterArguments!.adWhereInput);

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

    //probably just a temporary workaround (but it works)
    if (FilterService.showAdsWithPictures) {
      ads.removeWhere((element) => element.files!.isEmpty);
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
          i18next!.t("i18n:noData"),
          style: CustomDarkTextStyle.bodyMedium(context),
        ),
      );
    }

    final categories = FindAllCategories$Query.fromJson(categoriesResult.data!).findAllCategories;

    // Calculation to determine ratio so the height becomes fixed (target height 140 for 1 column, 257 - for 2 columns)
    final targetHeight = (columns == 1 ? 140 : 257 * columns);
    final childAspectRatio = MediaQuery.of(context).size.width / targetHeight;

    /// 1. We need to use UniqueKey for AnimationLimiter to rebuild the widget and restart animations when we want
    /// 2. We put it into state so we can update it and rerender dependand widgets
    /// 3. We use useEffect to run a function only when we want (when "columns" value changes)
    /// Thus, when column value changes -> useEffect triggers -> creates new UniqueKey() and puts it to state -> rerenders animation
    final animationKey = useState<UniqueKey>(UniqueKey());
    useEffect(() {
      animationKey.value = UniqueKey();
      return null;
    }, [columns]);

    return AnimationLimiter(
      key: animationKey.value,
      child: (ads.isNotEmpty)
          ? GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: columns,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                childAspectRatio: childAspectRatio,
              ),
              itemCount: ads.length,
              itemBuilder: (context, index) {
                final ad = ads[index];

                final child = (columns == 1) ? _buildHorizontalTile(context, ad, categories) : _buildVerticalTile(context, ad, categories);

                return AnimationConfiguration.staggeredGrid(
                  position: index,
                  duration: const Duration(milliseconds: 500),
                  columnCount: columns,
                  child: ScaleAnimation(
                    child: FadeInAnimation(child: child),
                  ),
                );
              },
            )
          : Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Text(
                i18next!.t("i18n:noResultsFound"),
                style: CustomDarkTextStyle.bodyMedium(context),
              ),
            ),
    );
  }

  Widget _buildHorizontalTile(BuildContext context, FindAllAds$Query$Ad ad, List<FindAllCategories$Query$Category> categories) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(
          width: 0.8,
          color: lightGrayBackgroundColor,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(3),
        ),
      ),
      child: HorizontalCarTile(
        ad: ad,
        categories: categories,
        isCompareIconVisible: false,
        isFavoriteIconVisible: true,
        isDeleteIconVisible: false,
        filterArguments: filterArguments,
      ),
    );
  }

  Widget _buildVerticalTile(BuildContext context, FindAllAds$Query$Ad ad, List<FindAllCategories$Query$Category> categories) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        border: Border.all(
          width: 0.8,
          color: lightGrayBackgroundColor,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(3),
        ),
      ),
      child: VerticalCarTile(
        ad: ad,
        categories: categories,
        isCompareIconVisible: false,
        isFavoriteIconVisible: true,
        isDeleteIconVisible: false,
        filterArguments: filterArguments,
      ),
    );
  }
}
