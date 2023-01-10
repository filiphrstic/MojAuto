import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:i18next/i18next.dart';
import '../../utils/themes.dart';
import '../shared/horizontal_car_tile.dart';
import '../../data/graphql/schema.generated.dart';
import '../../utils/globals.dart';

/// Builds favorite ads list
class FavoriteList extends HookWidget {
  final List<FindListWithAdsByListType$Query$List$ListAd> favoriteAds;
  final List<FindAllCategories$Query$Category> categories;
  const FavoriteList({Key? key, required this.favoriteAds, required this.categories}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final i18next = I18Next.of(context);
    // sorted ascending by default
    final sorting = useState("asc");

    //***********************/
    //* Build return Widget */
    //***********************/

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Number of ads counter
              Row(
                children: [
                  Text(
                    i18next!.t('i18n:numberOfAds').toUpperCase(),
                    style: CustomDarkTextStyle.bodyLarge(context),
                  ),
                  Text(
                    ": ${favoriteAds.length}",
                    style: CustomDarkTextStyle.bodyLarge(context),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 4),
                    child: Text(
                      i18next.t('i18n:sorting').toUpperCase(),
                      style: CustomDarkTextStyle.bodyLarge(context),
                    ),
                  ),
                  // Sorting dropdown
                  DropdownButton(
                    value: sorting.value,
                    items: [
                      DropdownMenuItem(
                        value: "asc",
                        child: Text(
                          i18next.t('i18n:oldest').toUpperCase(),
                          style: CustomDarkTextStyle.bodyLarge(context),
                        ),
                      ),
                      DropdownMenuItem(
                        value: "desc",
                        child: Text(
                          i18next.t('i18n:newest').toUpperCase(),
                          style: CustomDarkTextStyle.bodyLarge(context),
                        ),
                      ),
                    ],
                    onChanged: (value) {
                      if (value == "asc") {
                        favoriteAds.sort((a, b) => a.ad.createdAt.compareTo(b.ad.createdAt));
                        sorting.value = "asc";
                      } else if (value == "desc") {
                        favoriteAds.sort((a, b) => b.ad.createdAt.compareTo(a.ad.createdAt));
                        sorting.value = "desc";
                      }
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
        // List of favorite ads
        favoriteAdsListIdGlobal == null
            ? const SizedBox.shrink()
            : ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: favoriteAds.length,
                itemBuilder: (context, index) {
                  final ad = favoriteAds[index].ad;
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
                      isFavoriteIconVisible: false,
                      isDeleteIconVisible: true,
                    ),
                  );
                },
              ),
      ],
    );
  }
}
