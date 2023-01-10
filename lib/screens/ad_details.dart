import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:i18next/i18next.dart';
import 'package:intl/intl.dart';
import 'package:get/get.dart';
import '../data/graphql/schema.generated.graphql.dart';
import '../screen_arguments/login_arguments.dart';
import '../utils/share_service.dart';
import '../widgets/ad_details/recommended_list.dart';
import '../widgets/shared/agents_row.dart';
import '../widgets/shared/compare_button.dart';
import '../widgets/shared/price_rating/price_summary.dart';
import '../widgets/ad_details/seller_info.dart';
import '../widgets/shared/price_rating/price_indicator.dart';
import '../widgets/ad_details/photo_gallery.dart';
import '../widgets/navigation/appbar_search.dart';
import '../widgets/navigation/navigation_menu.dart';
import '../screen_arguments/ad_details_arguments.dart';
import '../utils/formatters.dart';
import '../utils/themes.dart';
import '../../utils/globals.dart';
import '../../navigation/routes.dart';
import '../../authentication/authentication_service.dart';

class AdDetailsScreen extends HookWidget {
  final AdDetailsArguments adDetailsArguments;
  final _shareService = ShareService();

  AdDetailsScreen({Key? key, required this.adDetailsArguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<FindAllCategories$Query$Category> categories = adDetailsArguments.categories;
    final AdWithAdAutoFragmentMixin ad = adDetailsArguments.ad!;

    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: navigationBarBackgroudColor,
        ),
        automaticallyImplyLeading: true,
        actions: const [AppbarSearch()],
      ),
      floatingActionButton: ValueListenableBuilder(
        valueListenable: compareAdsIdsListGlobal,
        builder: (BuildContext context, List<AdWithAdAutoFragmentMixin> compareAdsList, widget) {
          return compareAdsList.isEmpty ? const SizedBox.shrink() : buildCompareButton(context, categories, null, adDetailsArguments);
        },
      ),
      body: _buildBody(context, categories, ad),
      bottomNavigationBar: const NavigationMenu(selectedIndex: 0),
    );
  }

  Widget _buildBody(BuildContext context, List<FindAllCategories$Query$Category> categories, AdWithAdAutoFragmentMixin ad) {
    final I18Next i18next = I18Next.of(context)!;

    // choices for PopupMenuButton share
    const String shareWithPhotoOption = "Share with photo";
    const String sharePlainTextOption = "Share plain text";
    const List<String> shareOptions = <String>[
      shareWithPhotoOption,
      sharePlainTextOption,
    ];

    ValueNotifier<bool> isAdFavorite = useState(favoriteAdsIdsListGlobal.contains(int.parse(ad.adId)));
    ValueNotifier<bool> isAdInCompareList = useState(compareAdsIdsListGlobal.value.any((element) => element.adId == ad.adId));

    // Mileage
    final String mileage = ad.adAuto == null || ad.adAuto?.km == null ? "-" : "${ad.adAuto?.km} km";
    // Engine power in kW
    final String powerKw = ad.adAuto == null || ad.adAuto?.powerKw == null ? "-" : "${ad.adAuto?.powerKw} kW";
    // Transmition type
    FindAllCategories$Query$Category? transmissionTypeCategory =
        categories.firstWhereOrNull((element) => element.categoryId == ad.adAuto?.transmissionTypeCid.toString());
    final String transmissionType = ad.adAuto == null || ad.adAuto?.transmissionTypeCid == null || transmissionTypeCategory == null
        ? "-"
        // Todo: remove replaceAll later - it's just for the presentation (to fit into the current wireframe layout)
        : transmissionTypeCategory.name.replaceAll(" transmission", "").replaceAll(" gearbox", "").replaceAll("Semi automatic", "Semi");
    // Fuel type
    FindAllCategories$Query$Category? fuelTypeCategory = categories.firstWhereOrNull(
      (element) => element.categoryId == ad.adAuto?.fuelTypeCid.toString(),
    );
    final String fuelType = ad.adAuto == null || ad.adAuto?.fuelTypeCid == null || fuelTypeCategory == null ? "-" : fuelTypeCategory.name;
    // Make
    FindAllCategories$Query$Category? makeCategory = categories.firstWhereOrNull(
      (element) => element.categoryId == ad.adAuto?.makeCid.toString(),
    );
    final String make = (ad.adAuto == null || ad.adAuto?.makeCid == null || makeCategory == null) ? "-" : makeCategory.name;
    // Vehicle type
    FindAllCategories$Query$Category? vehicleTypeCategory = categories.firstWhereOrNull(
      (element) => element.categoryId == ad.adAuto?.vehicleTypeCid.toString(),
    );
    final String vehicleType = ad.adAuto == null || ad.adAuto?.vehicleTypeCid == null || vehicleTypeCategory == null ? "-" : vehicleTypeCategory.name;
    // Condition
    FindAllCategories$Query$Category? conditionCategory = categories.firstWhereOrNull(
      (element) => element.categoryId == ad.adAuto?.conditionTypeCid.toString(),
    );
    final String condition = ad.adAuto == null || ad.adAuto?.conditionTypeCid == null || conditionCategory == null ? "-" : conditionCategory.name;
    // Year
    final String year = ad.adAuto == null || ad.adAuto?.year == null ? "-" : "${ad.adAuto?.year}";
    // Created at date and time
    final String createdAtDate = ad.adAuto == null || ad.adAuto?.year == null ? "-" : DateFormat("yyyy-MM-dd").format(ad.createdAt);
    final String createdAtTime = ad.adAuto == null || ad.adAuto?.year == null ? "-" : DateFormat("HH:mm").format(ad.createdAt);

    // Tab names
    final List<Widget> tabsList = [
      const Tab(text: "BASICS"),
      const Tab(text: "TECH"),
      const Tab(text: "FEATURES"),
    ];

    final TabController tabController = useTabController(initialLength: tabsList.length);
    final ValueNotifier<int> tabIndex = useState(0);
    final GlobalKey key = GlobalKey();

    tabController.addListener(() {
      tabIndex.value = tabController.index;
    });

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
      ),
    );
    // Remove from favorites variables
    Map<String, dynamic> removeFromFavoritesVariables = {"ad_id": int.parse(ad.adId), "list_id": favoriteAdsListIdGlobal ?? -1};

    //***********************/
    //* Build return Widget */
    //***********************/

    return SingleChildScrollView(
      physics: const AlwaysScrollableScrollPhysics(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Photo gallery preview
          Padding(
            padding: const EdgeInsets.only(top: 6),
            child: Stack(
              children: [
                ad.files == null || ad.files!.isEmpty ? const SizedBox.shrink() : PhotoGallery(photos: ad.files!),
                // Favorite button
                Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 5, right: 5),
                    child: InkWell(
                      child: Icon(Icons.favorite, color: isAdFavorite.value ? orangeThemeColor : primaryColor),
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
                  ),
                ),
              ],
            ),
          ),
          // Title label
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                ad.title,
                style: CustomDarkTextStyle.h1(context),
              ),
            ),
          ),
          // Price details and small buttons row
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Price label
                    Padding(
                      padding: const EdgeInsets.only(bottom: 10),
                      child: ad.priceEurocent == null
                          // when price is null
                          ? Text(
                              "${i18next.t("i18n:price")} ${i18next.t("i18n:notProvided")}",
                              style: CustomDarkTextStyle.h1(context),
                            )
                          // when price exists
                          : Text(
                              formatCurrencyEurocent.format(ad.priceEurocent),
                              style: CustomDarkTextStyle.h1(context),
                            ),
                    ),
                    // Price indicator
                    Row(
                      children: [
                        PriceSummary(priceRating: ad.priceRating, textStyle: CustomDarkTextStyle.bodyLarge(context)),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: PriceIndicator(priceRating: ad.priceRating),
                        ),
                      ],
                    ),
                  ],
                ),
                // Small call and message buttons
                Row(
                  children: [
                    // Call button
                    SizedBox(
                      width: 50,
                      height: 50,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: orangeThemeColor,
                        ),
                        onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(i18next.t("i18n:functionalityNotImplemented")),
                          ),
                        ),
                        child: const Icon(
                          Icons.call,
                          color: lightTextColor,
                        ),
                      ),
                    ),
                    // Message button
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: SizedBox(
                        width: 50,
                        height: 50,
                        child: TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: orangeThemeColor,
                          ),
                          onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(i18next.t("i18n:functionalityNotImplemented")),
                            ),
                          ),
                          child: const Icon(
                            Icons.messenger_rounded,
                            color: lightTextColor,
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          // Seller name
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 15, top: 20, bottom: 5),
            child: Text(
              "Seller name",
              style: CustomDarkTextStyle.h1(context),
            ),
          ),
          // Seller rating
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                const Icon(
                  Icons.star_rounded,
                  color: greenIndicationColor,
                ),
                const Icon(
                  Icons.star_rounded,
                  color: greenIndicationColor,
                ),
                const Icon(
                  Icons.star_rounded,
                  color: greenIndicationColor,
                ),
                const Icon(
                  Icons.star_rounded,
                  color: greenIndicationColor,
                ),
                const Icon(
                  Icons.star_rounded,
                  color: greenIndicationColor,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5),
                  child: Text(
                    "4.5 rating",
                    style: CustomDarkTextStyle.h2(context),
                  ),
                ),
              ],
            ),
          ),
          // Primary details grayboxes
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Mileage graybox
                Container(
                  color: lightGrayBackgroundColor,
                  height: 100,
                  width: 80,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/icons/basic_categories/speedometer.png",
                        height: 30,
                      ),
                      Text(
                        "Mileage",
                        style: CustomDarkTextStyle.bodyMedium(context),
                      ),
                      Text(
                        mileage,
                        style: CustomDarkTextStyle.h3(context),
                      ),
                    ],
                  ),
                ),
                // Endine power graybox
                Container(
                  color: lightGrayBackgroundColor,
                  height: 100,
                  width: 80,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/icons/basic_categories/engine.png",
                        height: 30,
                      ),
                      Text(
                        "Engine power",
                        style: CustomDarkTextStyle.bodyMedium(context),
                      ),
                      Text(
                        powerKw,
                        style: CustomDarkTextStyle.h3(context),
                      ),
                    ],
                  ),
                ),
                // Fuel type graybox
                Container(
                  color: lightGrayBackgroundColor,
                  height: 100,
                  width: 80,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/icons/basic_categories/gasoline-pump.png",
                        height: 30,
                      ),
                      Text(
                        "Fuel type",
                        style: CustomDarkTextStyle.bodyMedium(context),
                      ),
                      Text(
                        fuelType,
                        style: CustomDarkTextStyle.h3(context),
                      ),
                    ],
                  ),
                ),
                // Transmission graybox
                Container(
                  color: lightGrayBackgroundColor,
                  height: 100,
                  width: 80,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        "assets/icons/basic_categories/gearbox.png",
                        height: 30,
                      ),
                      Text(
                        "Transmission",
                        style: CustomDarkTextStyle.bodyMedium(context),
                      ),
                      Text(
                        transmissionType,
                        style: CustomDarkTextStyle.h3(context),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          // Compare button
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Text(
                  i18next.t("i18n:compare"),
                  style: CustomDarkTextStyle.bodyLarge(context),
                ),
                IconButton(
                  icon: Icon(Icons.compare_arrows_rounded, color: isAdInCompareList.value ? orangeThemeColor : primaryColor),
                  onPressed: () => isAdInCompareList.value
                      ? {
                          compareAdsIdsListGlobal.value = [...compareAdsIdsListGlobal.value..remove(ad)],
                          isAdInCompareList.value = false,
                        }
                      : {
                          compareAdsIdsListGlobal.value = [...compareAdsIdsListGlobal.value..add(ad)],
                          isAdInCompareList.value = true,
                        },
                ),
              ],
            ),
          ),
          // Details tabs' headers
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Container(
              decoration: const BoxDecoration(color: lightGrayThemeColor),
              height: 50,
              child: TabBar(
                onTap: (index) {},
                controller: tabController,
                tabs: tabsList,
                indicatorColor: Colors.black,
                labelColor: Colors.black,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 2.0,
                isScrollable: false,
              ),
            ),
          ),
          // Ad details - tab views
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 20),
            child: Container(
              decoration: BoxDecoration(border: Border.all(color: darkGrayBackgroundColor)),
              height: 260,
              child: TabBarView(
                key: key,
                controller: tabController,
                children: [
                  // Tab 1 details
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Make: $make",
                          style: CustomDarkTextStyle.bodyLarge(context),
                        ),
                      ),
                      const Divider(
                        color: darkGrayBackgroundColor,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Vehicle type: $vehicleType",
                          style: CustomDarkTextStyle.bodyLarge(context),
                        ),
                      ),
                      const Divider(
                        color: darkGrayBackgroundColor,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Condition: $condition",
                          style: CustomDarkTextStyle.bodyLarge(context),
                        ),
                      ),
                      const Divider(
                        color: darkGrayBackgroundColor,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Year: $year",
                          style: CustomDarkTextStyle.bodyLarge(context),
                        ),
                      ),
                    ],
                  ),
                  // Tab 2 details
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Fuel type: $fuelType",
                          style: CustomDarkTextStyle.bodyLarge(context),
                        ),
                      ),
                      const Divider(
                        color: darkGrayBackgroundColor,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Power in kW: $powerKw",
                          style: CustomDarkTextStyle.bodyLarge(context),
                        ),
                      ),
                      const Divider(
                        color: darkGrayBackgroundColor,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Kilometers: $mileage",
                          style: CustomDarkTextStyle.bodyLarge(context),
                        ),
                      ),
                      const Divider(
                        color: darkGrayBackgroundColor,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          "Transmission: $transmissionType",
                          style: CustomDarkTextStyle.bodyLarge(context),
                        ),
                      ),
                    ],
                  ),
                  // Tab 3 details
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      // Todo: fill with features
                      Divider(
                        color: darkGrayBackgroundColor,
                      ),
                      Divider(
                        color: darkGrayBackgroundColor,
                      ),
                      Divider(
                        color: darkGrayBackgroundColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          // Ad description
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              "DESCRIPTION",
              style: CustomDarkTextStyle.h1(context),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vel tortor amet at et purus rhoncus eget varius blandit. Blandit eu in imperdiet blandit eu. Tellus aliquet ut vulputate semper at ornare tellus.",
              style: CustomDarkTextStyle.bodyLarge(context),
            ),
          ),
          // Call button
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 30),
            child: TextButton(
              style: TextButton.styleFrom(
                minimumSize: const Size.fromHeight(50),
                backgroundColor: orangeThemeColor,
              ),
              onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(i18next.t("i18n:functionalityNotImplemented")),
                ),
              ),
              child: Text(
                i18next.t("i18n:call").toUpperCase(),
                style: CustomWhiteTextStyle.bodyLarge(context),
              ),
            ),
          ),
          // Message button
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 30),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                side: const BorderSide(width: 1, color: orangeThemeColor),
                minimumSize: const Size.fromHeight(50),
              ),
              onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(i18next.t("i18n:functionalityNotImplemented")),
                ),
              ),
              child: Text(
                i18next.t("i18n:writeMessage").toUpperCase(),
                style: const TextStyle(
                  color: orangeThemeColor,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          // Seller block
          const SellerInfo(),
          // Share and report buttons row
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 10),
            child: Row(
              children: [
                // Share button
                Row(
                  children: [
                    Text(
                      "Share",
                      style: CustomDarkTextStyle.bodyLarge(context),
                    ),
                    ad.files == null || ad.files!.isEmpty
                        // if ad has no photos then share plain text
                        ? IconButton(
                            icon: const Icon(Icons.share_rounded),
                            onPressed: () => shareAd(ad, context, false),
                          )
                        // if ad has photos then provide option to include first photo in the share message
                        : PopupMenuButton<String>(
                            icon: const Icon(Icons.share_rounded),
                            onSelected: (value) {
                              switch (value) {
                                case shareWithPhotoOption:
                                  shareAd(ad, context, true);
                                  break;
                                case sharePlainTextOption:
                                  shareAd(ad, context, false);
                                  break;
                              }
                            },
                            itemBuilder: (BuildContext context) {
                              return shareOptions.map((String choice) {
                                return PopupMenuItem<String>(
                                  value: choice,
                                  child: Text(choice),
                                );
                              }).toList();
                            },
                          ),
                  ],
                ),
                // Report ad button
                Row(
                  children: [
                    Text(
                      "Report Ad",
                      style: CustomDarkTextStyle.bodyLarge(context),
                    ),
                    IconButton(
                      icon: const Icon(Icons.report_rounded),
                      onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(i18next.t("i18n:functionalityNotImplemented")),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Text(
              "Ad published: $createdAtDate at $createdAtTime",
              style: CustomDarkTextStyle.bodyMedium(context),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Text(
              "Ad displayed: 20731 times",
              style: CustomDarkTextStyle.bodyMedium(context),
            ),
          ),
          // Recommended label
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
            child: Text(
              i18next.t("i18n:recommendedAds"),
              style: CustomDarkTextStyle.bodyLarge(context),
            ),
          ),
          // Recommended ads
          const Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 10),
            child: RecommendedList(),
          ),
          // Agents row
          const Padding(
            padding: EdgeInsets.only(top: 20, bottom: 30),
            child: AgentsRow(),
          ),
        ],
      ),
    );
  }

  Future<void> shareAd(AdWithAdAutoFragmentMixin ad, BuildContext context, bool includePhotos) async {
    try {
      await _shareService.onShare(ad, context, includePhotos);
    } on Exception catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(e.toString()),
        ),
      );
    }
  }
}
