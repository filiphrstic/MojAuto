import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:i18next/i18next.dart';
import '../utils/globals.dart';
import '../utils/themes.dart';
import '../widgets/shared/compare_button.dart';
import '../widgets/shared/trending_list.dart';
import '../data/graphql/schema.generated.graphql.dart';
import '../data/repos/categories/findAllCategories.dart';
import '../screen_arguments/filter_arguments.dart';
import '../widgets/navigation/navigation_menu.dart';
import '../widgets/navigation/appbar_search.dart';

class FilterResultsScreen extends HookWidget {
  final FilterArguments filterArguments;
  const FilterResultsScreen({Key? key, required this.filterArguments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final i18next = I18Next.of(context);

    // Todo: replace after Saved Searches PR merge - there were changed in categories fetching
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
          i18next!.t("i18n:noData"),
          style: CustomDarkTextStyle.bodyMedium(context),
        ),
      );
    }
    final List<FindAllCategories$Query$Category> categories = FindAllCategories$Query.fromJson(result.data!).findAllCategories;

    return Scaffold(
      appBar: AppBar(
        actions: const [AppbarSearch()],
      ),
      floatingActionButton: ValueListenableBuilder(
        valueListenable: compareAdsIdsListGlobal,
        builder: (BuildContext context, List<AdWithAdAutoFragmentMixin> compareAdsList, widget) {
          return compareAdsList.isEmpty ? const SizedBox.shrink() : buildCompareButton(context, categories, filterArguments, null);
        },
      ),
      body: SingleChildScrollView(
        child: Padding(
          // Left and right side margins for the whole screen
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: _buildBody(context, filterArguments, i18next),
        ),
      ),
      bottomNavigationBar: const NavigationMenu(selectedIndex: 0),
    );
  }

  Widget _buildBody(BuildContext context, FilterArguments filterArgs, I18Next? i18next) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // filterArgs.saveSearchBool
        //     ? FilterCarsList(
        //         filterArguments: filterArgs,
        //         savedSearchBool: true,
        //       )
        //     : FilterCarsList(
        //         filterArguments: filterArgs,
        //         filterBool: true,
        //       ),
        // Trending label
        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Text(
            i18next!.t("i18n:trending"),
            style: CustomDarkTextStyle.bodyLarge(context),
          ),
        ),
        // Trending ads listView
        const Padding(
          padding: EdgeInsets.only(top: 10, bottom: 20),
          child: TrendingList(),
        ),
      ],
    );
  }
}
