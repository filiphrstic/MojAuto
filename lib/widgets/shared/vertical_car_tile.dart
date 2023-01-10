import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:i18next/i18next.dart';
import '../../authentication/authentication_service.dart';
import '../../screen_arguments/filter_arguments.dart';
import '../../screen_arguments/login_arguments.dart';
import '../../utils/themes.dart';
import 'price_rating/price_indicator.dart';
import 'price_rating/price_summary.dart';
import 'package:get/get.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../navigation/routes.dart';
import '../../data/graphql/schema.generated.dart';
import '../../screen_arguments/ad_details_arguments.dart';
import '../../utils/formatters.dart';
import '../../utils/globals.dart';

/// Builds a single new car tile with a vertical layout
class VerticalCarTile extends HookWidget {
  final AdWithAdAutoFragmentMixin ad;
  final List<FindAllCategories$Query$Category> categories;
  final bool isCompareIconVisible;
  final bool isFavoriteIconVisible;
  final bool isDeleteIconVisible;

  // filterArguments used for returning back to filter result screen (if redirection happened from filter results)
  // fixes icon refreshment for when user tapped favorite/compare on the ad details screen and pressed the back button
  final FilterArguments? filterArguments;

  const VerticalCarTile({
    Key? key,
    required this.ad,
    required this.categories,
    required this.isCompareIconVisible,
    required this.isFavoriteIconVisible,
    required this.isDeleteIconVisible,
    this.filterArguments,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final I18Next i18next = I18Next.of(context)!;
    ValueNotifier<bool> isAdFavorite = useState(favoriteAdsIdsListGlobal.contains(int.parse(ad.adId)));
    ValueNotifier<bool> isAdInCompareList = useState(compareAdsIdsListGlobal.value.any((element) => element.adId == ad.adId));

    // Mileage
    final String mileage = ad.adAuto == null || ad.adAuto?.km == null ? "" : "${ad.adAuto?.km} km";
    // Year
    final String year = ad.adAuto == null || ad.adAuto?.year == null ? "" : "${ad.adAuto?.year}.";
    // Make
    FindAllCategories$Query$Category? makeCategory = categories.firstWhereOrNull(
      (element) => element.categoryId == ad.adAuto?.makeCid.toString(),
    );
    final String make = ad.adAuto == null || ad.adAuto?.makeCid == null || makeCategory == null ? "" : makeCategory.name;
    // Model
    FindAllCategories$Query$Category? modelCategory = categories.firstWhereOrNull(
      (element) => element.categoryId == ad.adAuto?.modelCid.toString(),
    );
    final String model = ad.adAuto == null || ad.adAuto?.modelCid == null || modelCategory == null ? "" : modelCategory.name;

    //*****************************/
    //* Add to favorites mutation */
    //*****************************/

    final addToFavoritesMutation = useMutation(
      MutationOptions(
        document: AddToFavoritesMutation(variables: AddToFavoritesArguments()).document,
        operationName: AddToFavoritesMutation(variables: AddToFavoritesArguments()).operationName,
        onError: (dynamic errorData) {
          //print(errorData);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                i18next.t("Error occured while adding ${ad.title} to favorites"),
              ),
            ),
          );
        },
      ),
    );
    // Add to favorites variables
    Map<String, dynamic> addToFavoritesVariables = {"ad_id": int.parse(ad.adId)};

    //**********************************/
    //* Remove from favorites mutation */
    //**********************************/

    final removeFromFavoritesMutation = useMutation(
      MutationOptions(
        document: RemoveFromListMutation(variables: RemoveFromListArguments(ad_id: int.parse(ad.adId), list_id: favoriteAdsListIdGlobal ?? -1)).document,
        operationName:
            RemoveFromListMutation(variables: RemoveFromListArguments(ad_id: int.parse(ad.adId), list_id: favoriteAdsListIdGlobal ?? -1)).operationName,
        onError: (dynamic errorData) {
          //print(errorData);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                i18next.t("Error occured while removing ${ad.title} from favorites"),
              ),
            ),
          );
        },
        onCompleted: (dynamic resultData) {
          //print(resultData);
          if (resultData != null && isDeleteIconVisible) {
            // Todo: for now delete icon is visible only on the favorites screen
            // and only there this redirection should happen, may require a change later on
            if (isDeleteIconVisible) {
              Navigator.pushNamed(context, favoritesScreenRoute);
            }
          }
        },
      ),
    );
    // Remove from favorites variables
    Map<String, dynamic> removeFromFavoritesVariables = {"ad_id": int.parse(ad.adId), "list_id": favoriteAdsListIdGlobal ?? -1};

    //***********************/
    //* Build return Widget */
    //***********************/

    return InkWell(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Car image
          // I am not rly sure how to approach sizing images in those tiles :(
          Flexible(
            fit: FlexFit.tight,
            flex: 45,
            child: ad.files == null || ad.files!.isEmpty
                ? const Center(
                    child: Icon(
                      Icons.no_photography_rounded,
                      size: 40,
                    ),
                  )
                : CachedNetworkImage(
                    imageUrl: imageSourceAddress + ad.files!.first.path,
                    progressIndicatorBuilder: (context, url, downloadProgress) => Center(
                      child: CircularProgressIndicator(value: downloadProgress.progress),
                    ),
                    imageBuilder: (context, imageProvider) => Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(topLeft: Radius.circular(3), topRight: Radius.circular(3)),
                        image: DecorationImage(image: imageProvider, fit: BoxFit.cover),
                      ),
                    ),
                    errorWidget: (context, url, error) => const Icon(Icons.error),
                  ),
          ),
          // Ad details column
          Flexible(
            fit: FlexFit.tight,
            flex: 55,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Ad title
                      Text(
                        ad.title.toUpperCase(),
                        style: CustomDarkTextStyle.h3(context),
                        overflow: TextOverflow.ellipsis,
                      ),
                      // Buttons
                      Row(
                        children: [
                          // Compare button
                          isCompareIconVisible
                              ? InkWell(
                                  child: Icon(
                                    Icons.compare_arrows_rounded,
                                    size: 13,
                                    color: isAdInCompareList.value ? orangeThemeColor : primaryColor,
                                  ),
                                  onTap: () => isAdInCompareList.value
                                      ? {
                                          compareAdsIdsListGlobal.value = [...compareAdsIdsListGlobal.value..remove(ad)],
                                          isAdInCompareList.value = false,
                                        }
                                      : {
                                          compareAdsIdsListGlobal.value = [...compareAdsIdsListGlobal.value..add(ad)],
                                          isAdInCompareList.value = true,
                                        },
                                )
                              : const SizedBox.shrink(),
                          // Delete button
                          isDeleteIconVisible
                              ? Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: InkWell(
                                    child: const Icon(
                                      Icons.delete_rounded,
                                      size: 13,
                                    ),
                                    onTap: () => !AuthenticationService().isLoggedIn()
                                        ? Navigator.pushNamed(context, loginScreenRoute, arguments: LoginArguments(0, favoritesScreenRoute))
                                        : _showAlertDialog(context, ad.title, removeFromFavoritesMutation, removeFromFavoritesVariables, i18next),
                                  ),
                                )
                              : const SizedBox.shrink(),
                          // Favorite button
                          isFavoriteIconVisible
                              ? Padding(
                                  padding: const EdgeInsets.only(left: 5),
                                  child: InkWell(
                                    child: Image.asset(
                                      isAdFavorite.value ? 'assets/icons/other/favorite_checked.png' : 'assets/icons/other/favorite_unchecked.png',
                                      height: 12,
                                      width: 13,
                                    ),
                                    onTap: () async {
                                      !AuthenticationService().isLoggedIn()
                                          ? Navigator.pushNamed(context, loginScreenRoute, arguments: LoginArguments(0, homeScreenRoute))
                                          : isAdFavorite.value
                                              ? {
                                                  removeFromFavoritesMutation.runMutation(removeFromFavoritesVariables),
                                                  isAdFavorite.value = false,
                                                }
                                              : {
                                                  addToFavoritesMutation.runMutation(addToFavoritesVariables),
                                                  isAdFavorite.value = true,
                                                };
                                    },
                                  ),
                                )
                              : const SizedBox.shrink(),
                        ],
                      ),
                    ],
                  ),
                  // Mileage
                  mileage == ""
                      ? const SizedBox.shrink()
                      : Text(
                          mileage,
                          style: CustomDarkTextStyle.bodySmall(context),
                        ),
                  // Year
                  year == ""
                      ? const SizedBox.shrink()
                      : Text(
                          year,
                          style: CustomDarkTextStyle.bodySmall(context),
                        ),
                  // Make
                  make == ""
                      ? const SizedBox.shrink()
                      : Text(
                          make,
                          style: CustomDarkTextStyle.bodySmall(context),
                        ),
                  // Model
                  model == ""
                      ? const SizedBox.shrink()
                      : Text(
                          model,
                          style: CustomDarkTextStyle.bodySmall(context),
                        ),
                  // Price and price summary row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Price label
                      ad.priceEurocent != null
                          ? Text(
                              style: CustomDarkTextStyle.h4(context),
                              formatCurrencyEurocent.format(ad.priceEurocent),
                            )
                          : const SizedBox.shrink(),
                      // Price indicator
                      ad.priceEurocent == null
                          ? const Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: SizedBox.shrink(),
                            )
                          : Align(
                              alignment: Alignment.bottomRight,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 5),
                                    child: PriceSummary(
                                      priceRating: ad.priceRating,
                                      textStyle: CustomDarkTextStyle.bodySmall(context),
                                    ),
                                  ),
                                  PriceIndicator(priceRating: ad.priceRating),
                                ],
                              ),
                            ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      onTap: () => Navigator.pushNamed(
        context,
        adDetailsScreenRoute,
        arguments: AdDetailsArguments(ad.adId, ad, categories),
      ).then(
        (onValue) {
          // if filterArguments object is not null then tile was built on the home page
          if (filterArguments != null) {
            Navigator.popAndPushNamed(context, homeScreenRoute, arguments: filterArguments);
            // else - tile built on favorites screen (for now the only option)
          } else {
            Navigator.popAndPushNamed(context, favoritesScreenRoute);
          }
        },
      ),
    );
  }

  _showAlertDialog(BuildContext context, String adTitle, MutationHookResult mutation, Map<String, dynamic> variables, I18Next i18next) {
    Widget cancelButton = TextButton(
      child: Text(i18next.t("i18n:cancel")),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    Widget continueButton = TextButton(
      child: Text(i18next.t("i18n:yes")),
      onPressed: () async {
        mutation.runMutation(variables);
        Navigator.of(context).pop();
      },
    );
    AlertDialog alert = AlertDialog(
      title: Text(i18next.t("i18n:confirmation")),
      content: Text(i18next.t("i18n:confirmRemoveFavorite", variables: {"title": adTitle})),
      actions: [
        cancelButton,
        continueButton,
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
