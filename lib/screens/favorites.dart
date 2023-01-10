import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:i18next/i18next.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import '../utils/enums.dart';
import '../utils/globals.dart';
import '../utils/themes.dart';
import '../widgets/favorites/favorite_list.dart';
import '../widgets/navigation/navigation_menu.dart';
import '../widgets/navigation/appbar_search.dart';
import '../../data/graphql/schema.generated.dart';
import '../widgets/shared/compare_button.dart';

class FavoritesScreen extends HookWidget {
  const FavoritesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final I18Next i18next = I18Next.of(context)!;

    //******************************/
    //* Find categories list query */
    //******************************/

    final readCategoriesResult = useQuery(
      QueryOptions(
        document: FindAllCategoriesQuery().document,
        fetchPolicy: FetchPolicy.cacheFirst,
      ),
    );

    final categoriesResult = readCategoriesResult.result;

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

    final List<FindAllCategories$Query$Category> categories = FindAllCategories$Query.fromJson(categoriesResult.data!).findAllCategories;

    return Scaffold(
      appBar: AppBar(
        actions: const [AppbarSearch()],
      ),
      floatingActionButton: ValueListenableBuilder(
        valueListenable: compareAdsIdsListGlobal,
        builder: (BuildContext context, List<AdWithAdAutoFragmentMixin> compareAdsList, widget) {
          return compareAdsList.isEmpty ? const SizedBox.shrink() : buildCompareButton(context, categories, null, null);
        },
      ),
      body: SingleChildScrollView(
        physics: const AlwaysScrollableScrollPhysics(),
        child: Padding(
          // Left and right side margins for the whole screen
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: _buildBody(context, i18next, categories),
        ),
      ),
      bottomNavigationBar: const NavigationMenu(selectedIndex: 1),
    );
  }

  Widget _buildBody(BuildContext context, I18Next i18next, List<FindAllCategories$Query$Category> categories) {
    //***********************************/
    //* Find ads in favorite list query */
    //***********************************/

    final readListResult = useQuery(
      QueryOptions(
        document: FindListWithAdsByListTypeQuery(variables: FindListWithAdsByListTypeArguments()).document,
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

    final FindListWithAdsByListType$Query$List? favoriteAdsList = FindListWithAdsByListType$Query.fromJson(listResult.data!).findOneList;

    // getting id of user's list with favorite ads
    final String? favoriteListId = favoriteAdsList?.listId;
    favoriteAdsListIdGlobal = favoriteListId != null ? int.parse(favoriteListId) : null;

    // getting a list of user's favorite ads
    final List<FindListWithAdsByListType$Query$List$ListAd> favoriteAds = favoriteAdsList?.listAd ?? [];

    // updating the global list of user's favorite ads
    favoriteAdsIdsListGlobal.clear();
    for (FindListWithAdsByListType$Query$List$ListAd listAd in favoriteAds) {
      favoriteAdsIdsListGlobal.add(int.parse(listAd.ad.adId));
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            "Favorites",
            style: CustomDarkTextStyle.bodyLarge(context),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: FavoriteList(favoriteAds: favoriteAds, categories: categories),
        ),
      ],
    );
  }
}
