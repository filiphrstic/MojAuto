import 'dart:convert';
import 'package:double_back_to_close_app/double_back_to_close_app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:i18next/i18next.dart';
import 'package:mobile/widgets/filter/badge_active_filters_count.dart';
import 'package:mobile/widgets/filter/show_ads_with_pictures_button.dart';
import '../widgets/home/ads_list.dart';
import '../authentication/authentication_service.dart';
import '../classes/categories.dart';
import '../classes/filter_service.dart';
import '../classes/main_categories.dart';
import '../data/graphql/schema.generated.graphql.dart';
import '../data/repos/categories/findAllCategories.dart';
import '../data/repos/categories/findCategoryByName.dart';
import '../data/repos/lists/createList.dart';
import '../screen_arguments/filter_arguments.dart';
import '../widgets/filter/filter_generator.dart';
import '../utils/globals.dart';
import '../utils/enums.dart';
import '../utils/themes.dart';
import '../navigation/routes.dart';
import '../widgets/navigation/navigation_menu.dart';

class HomeScreen extends HookWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final I18Next i18next = I18Next.of(context)!;
    final AnimationController drawerAnimationController = useAnimationController(duration: const Duration(milliseconds: 400));

    //Creates hook object that is used inside bottom filter drawer for saving a search
    final createNewSaveSearchList = createNewList(context);

    final findCategoryByNameResult = findCategoryByName("Home", context);
    if (findCategoryByNameResult.hasException) {
      return Text(findCategoryByNameResult.exception.toString());
    }
    if (findCategoryByNameResult.isLoading) {
      return const Center(child: CircularProgressIndicator.adaptive());
    }
    if (findCategoryByNameResult.data == null) {
      return Center(
        child: Text(
          i18next.t("i18n:noData"),
          style: CustomDarkTextStyle.bodyMedium(context),
        ),
      );
    }
    final homeCategory = FindCategoryByName$Query.fromJson(findCategoryByNameResult.data!).findOneCategory;
    FilterService.homeCategory = homeCategory;

    final result = findAllCategories();
    if (result.hasException) {
      return Text(result.exception.toString());
    }
    if (result.isLoading) {
      return const Center(child: CircularProgressIndicator.adaptive());
    }
    if (result.data == null) {
      return Center(
        child: Text(
          i18next.t("i18n:noData"),
          style: CustomDarkTextStyle.bodyMedium(context),
        ),
      );
    }
    final categories = FindAllCategories$Query.fromJson(result.data!).findAllCategories;
    Categories().setCategoriesList(categories);

    //Iterates through all categories and creates a category tree based on thier parent_id
    FilterService.createCategoriesTree(Categories.categoriesList);

    return GestureDetector(
      onTap: () => _clearFocus(context),
      child: Scaffold(
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: backgroundColor,
          ),
          backgroundColor: darkBlueThemeColor,
          title: Align(
            alignment: Alignment.center,
            child: Text(
              i18next.t("i18n:bestChoice").toUpperCase(),
              style: CustomWhiteTextStyle.h1(context),
            ),
          ),
          toolbarHeight: 45,
          automaticallyImplyLeading: false,
        ),
        body: DoubleBackToCloseApp(
          snackBar: SnackBar(
            content: Text(
              i18next.t("i18n:tapBackAgainToLeave"),
            ),
          ),
          // Adds a pull down to refresh functionality
          child: Padding(
            // Left and right side margins for the whole screen
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: _buildBody(context, i18next, createNewSaveSearchList, drawerAnimationController),
          ),
        ),
        bottomNavigationBar: const NavigationMenu(selectedIndex: 0),
        //Floating button that opens a bottom filter drawer
        floatingActionButton: FloatingActionButton(
            onPressed: (() {
              showFilterDrawer(
                context,
                i18next,
                createNewSaveSearchList,
                drawerAnimationController,
                FilterService.basicSection,
                FilterService.techSection,
                FilterService.featuresSection,
                createNewSaveSearchList,
              );
            }),
            foregroundColor: backgroundColor,
            backgroundColor: orangeThemeColor,
            child: const BadgeActiveFiltersCount()),
      ),
    );
  }

  /// Builds layout of the home screen
  Widget _buildBody(BuildContext context, I18Next i18next, MutationHookResult<Object?> createNewSaveSearchList, AnimationController drawerAnimationController) {
    // Querying for ads that are in the favorite list
    if (AuthenticationService().isLoggedIn() && !favoritesFetched) {
      final readListResult = useQuery(
        QueryOptions(
          document: FindFavoriteAdsListQuery(variables: FindFavoriteAdsListArguments()).document,
          variables: {"list_type": ListType.favorites.value},
          fetchPolicy: FetchPolicy.cacheFirst,
        ),
      );

      final listResult = readListResult.result;

      if (listResult.hasException) {
        return Text(listResult.exception.toString());
      }

      if (listResult.isLoading) {
        return const Center(child: CircularProgressIndicator.adaptive());
      }

      if (listResult.data == null) {
        return Center(
          child: Text(
            i18next.t("i18n:noData"),
            style: CustomDarkTextStyle.bodyMedium(context),
          ),
        );
      }

      final FindFavoriteAdsList$Query$List? favoriteAdsList = FindFavoriteAdsList$Query.fromJson(listResult.data!).findOneList;

      // getting id of user's list with favorite ads
      final String? favoriteListId = favoriteAdsList?.listId;
      favoriteAdsListIdGlobal = favoriteListId != null ? int.parse(favoriteListId) : null;

      // getting a list of user's favorite ads
      final List<FindFavoriteAdsList$Query$List$ListAd> favoriteAds = favoriteAdsList?.listAd ?? [];

      // updating the global list of user's favorite ads
      favoriteAdsIdsListGlobal.clear();
      for (FindFavoriteAdsList$Query$List$ListAd listAd in favoriteAds) {
        favoriteAdsIdsListGlobal.add(int.parse(listAd.ad.adId));
      }

      // this guarantees fetching favorites only once - after home redirection from login screen
      favoritesFetched = true;
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // search bar and filters button
        Padding(
          padding: const EdgeInsets.only(top: 12),
          child: _buildSearchBar(context, i18next, createNewSaveSearchList, true, drawerAnimationController),
        ),
        // promotional categories
        Padding(
          padding: const EdgeInsets.only(top: 12),
          child:
              //showing active filters below search bar - but not needed
              // (FilterService.chosenCategoryList.isNotEmpty)
              // ? ChosenFiltersList(chosenCategories: FilterService.chosenCategoryList)
              // :
              _buildPromotionalCategoriesList(i18next),
        ),
        // view selector
        Padding(
          padding: const EdgeInsets.only(top: 12, bottom: 17),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                i18next.t("i18n:sort").toUpperCase(),
                style: CustomDarkTextStyle.bodyMedium(context),
              ),
              ValueListenableBuilder(
                valueListenable: selectedViewType,
                builder: (BuildContext context, ViewType value, widget) {
                  return IconButton(
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(),
                    splashRadius: 10,
                    onPressed: () => {
                      if (selectedViewType.value == ViewType.grid)
                        selectedViewType.value = ViewType.list
                      else if (selectedViewType.value == ViewType.list)
                        selectedViewType.value = ViewType.grid
                    },
                    icon: Image.asset(
                      selectedViewType.value == ViewType.list ? 'assets/icons/view_types/grid.png' : 'assets/icons/view_types/list.png',
                      height: 18,
                      width: 18,
                    ),
                  );
                },
              ),
            ],
          ),
        ),
        // list of ads
        Expanded(
          //padding: const EdgeInsets.only(top: 12),
          child: ValueListenableBuilder(
            valueListenable: selectedViewType,
            builder: (BuildContext context, ViewType value, widget) {
              return RefreshIndicator(
                onRefresh: () => _refreshPage(context),
                displacement: 10,
                child: AdsList(
                  columns: selectedViewType.value == ViewType.list ? 1 : 2,
                  filterArguments: FilterArguments(
                    // saveSearchBool: false,
                    adWhereInput: jsonDecode(
                      FilterService.getAdWhereInput(),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  /// Refreshes the home page
  Future<void> _refreshPage(context) async => _redirect(context, homeScreenRoute);

  /// Clears the focus off a currently selected home screen widget
  void _clearFocus(BuildContext context) {
    FocusManager.instance.primaryFocus?.unfocus();
  }

  /// Redirects to new screen based on provided [route]
  void _redirect(BuildContext context, String route) {
    _clearFocus(context);
    Navigator.pushNamed(
      context,
      route,
    );
  }

  void showFilterDrawer(
      BuildContext context,
      I18Next i18next,
      MutationHookResult<Object?> createNewSaveSearchList,
      AnimationController drawerAnimationController,
      MainCategories basicSection,
      MainCategories techSection,
      MainCategories featuresSection,
      MutationHookResult<Object?> createList) {
    _clearFocus(context);
    showModalBottomSheet<void>(
      context: context,
      transitionAnimationController: drawerAnimationController,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      builder: (BuildContext context) => SizedBox(
        height: MediaQuery.of(context).size.height * 0.90,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(
                          Icons.close_rounded,
                          size: 20,
                          color: darkBlueThemeColor,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Text(
                        i18next.t('Filters'),
                        style: CustomDarkTextStyle.h1(context),
                      ),
                    ),
                  ],
                ),
                //Searchbar
                _buildSearchBar(context, i18next, createNewSaveSearchList, false, drawerAnimationController),
                //Basic section
                ExpansionTile(
                  initiallyExpanded: true,
                  title: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Text(
                        i18next.t(basicSection.mainCategory.name).toUpperCase(),
                        style: CustomDarkTextStyle.h1(context),
                      ),
                    ),
                  ),
                  children: [
                    FilterGenerator(filterElements: basicSection.mainCategoryChildren),
                  ],
                ),
                //Tech section
                ExpansionTile(
                  title: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Text(
                        i18next.t(techSection.mainCategory.name).toUpperCase(),
                        style: CustomDarkTextStyle.h1(context),
                      ),
                    ),
                  ),
                  children: [
                    FilterGenerator(filterElements: techSection.mainCategoryChildren),
                  ],
                ),
                //Features section
                ExpansionTile(
                  title: Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Text(
                        i18next.t(featuresSection.mainCategory.name).toUpperCase(),
                        style: CustomDarkTextStyle.h1(context),
                      ),
                    ),
                  ),
                  children: [
                    FilterGenerator(filterElements: featuresSection.mainCategoryChildren),
                  ],
                ),
                //Show ads with pictures toggle button & Reset all button
                const ShowAdsWithPicturesButton(),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 25),
                    child: TextButton(
                      onPressed: () {
                        //all active filters are being reset, but CategorySelect types still remain displayed (even though they are not active)
                        FilterService.chosenCategoryList.clear();
                        return showFilterDrawer(
                            context, i18next, createNewSaveSearchList, drawerAnimationController, basicSection, techSection, featuresSection, createList);
                      },
                      child: Text(
                        i18next.t(
                          'i18n:resetAll',
                        ),
                        style: CustomDarkTextStyle.bodyMediumUnderline(context),
                      ),
                    ),
                  ),
                ),
                //Search button & Show results button
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          minimumSize: const Size.fromHeight(40),
                          side: const BorderSide(),
                        ),
                        onPressed: () {
                          if (AuthenticationService().isLoggedIn()) {
                            final searchParams = FilterService.getAdWhereInput();
                            final createListData = FilterService.createSaveListMap(searchParams);
                            createList.runMutation(createListData);
                          } else {
                            final snackBar = SnackBar(
                              content: Text(
                                i18next.t(
                                  'i18n:youNeedToBeLoggedInToUseThisFunctionality',
                                ),
                              ),
                            );
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          }
                        },
                        child: Text(
                          i18next.t('i18n:saveSearch').toUpperCase(),
                          style: CustomDarkTextStyle.bodyLarge(context),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: TextButton(
                          style: TextButton.styleFrom(
                            minimumSize: const Size.fromHeight(40),
                            backgroundColor: orangeThemeColor,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.pushNamed(
                              context,
                              homeScreenRoute,
                              arguments: FilterArguments(
                                // saveSearchBool: false,
                                adWhereInput: jsonDecode(
                                  FilterService.getAdWhereInput(),
                                ),
                              ),
                            );
                          },
                          child: Text(
                            i18next.t("i18n:showResults").toUpperCase(),
                            style: CustomWhiteTextStyle.bodyLarge(context),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSearchBar(BuildContext context, I18Next i18next, MutationHookResult<Object?> createNewSaveSearchList, bool includeFiltersButton,
      AnimationController drawerAnimationController) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: SizedBox(
            height: 34,
            child: CupertinoSearchTextField(
              itemColor: darkBlueThemeColor,
              style: CustomDarkTextStyle.bodyMedium(context),
              placeholderStyle: CustomDarkTextStyle.bodyMedium(context),
              suffixMode: OverlayVisibilityMode.editing,
              prefixIcon: Padding(
                padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
                child: Image.asset(
                  'assets/icons/other/magnifying_glass.png',
                  height: 15,
                  width: 15,
                ),
              ),
              suffixInsets: const EdgeInsets.only(right: 10),
              suffixIcon: const Icon(
                FontAwesomeIcons.circleXmark,
                color: darkBlueThemeColor,
                size: 15,
              ),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(3)),
                color: lightGrayThemeColor,
                border: Border.all(
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
        ),
        includeFiltersButton
            ? Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Align(
                  alignment: Alignment.centerRight,
                  child: _buildFiltersButton(context, i18next, createNewSaveSearchList, drawerAnimationController),
                ),
              )
            : const SizedBox.shrink(),
      ],
    );
  }

  Widget _buildFiltersButton(
      BuildContext context, I18Next i18next, MutationHookResult<Object?> createNewSaveSearchList, AnimationController drawerAnimationController) {
    return SizedBox(
      height: 34,
      width: 72,
      child: TextButton(
          style: TextButton.styleFrom(
            backgroundColor: lightGrayThemeColor,
            foregroundColor: darkBlueThemeColor,
          ),
          onPressed: (() {
            showFilterDrawer(
              context,
              i18next,
              createNewSaveSearchList,
              drawerAnimationController,
              FilterService.basicSection,
              FilterService.techSection,
              FilterService.featuresSection,
              createNewSaveSearchList,
            );
          }),
          child: const BadgeActiveFiltersCount()),
    );
  }

  Widget _buildPromotionalCategoriesList(I18Next i18next) {
    // Todo: add query to get promotional categories, then fix itemCount and padding
    return SizedBox(
      height: 30,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 6,
        itemBuilder: (context, index) {
          const promotionalCategory = "Category";
          return Padding(
            padding: index != 5 /* itemCount-1 */ ? const EdgeInsets.only(right: 10) : const EdgeInsets.only(right: 0),
            child: InkWell(
              onTap: () => ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(i18next.t("i18n:functionalityNotImplemented")),
                ),
              ),
              child: Container(
                height: 30,
                width: 80,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 0.8, color: lightGrayBackgroundColor),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(3),
                  ),
                ),
                child: Text(
                  promotionalCategory,
                  style: CustomGrayTextStyle.bodySmall(context),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
