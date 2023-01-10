import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart' show HookWidget, useState;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:i18next/i18next.dart';
import '../classes/filter_service.dart';
import '../classes/saved_search_list.dart';
import '../data/graphql/schema.generated.graphql.dart';
import '../navigation/routes.dart';
import '../screen_arguments/filter_arguments.dart';
import '../utils/enums.dart';
import '../utils/themes.dart';
import '../widgets/filter/chosen_filters_list.dart';
import '../widgets/navigation/navigation_menu.dart';
import '../widgets/navigation/appbar_search.dart';

class SavedSearchesScreen extends HookWidget {
  const SavedSearchesScreen({Key? key}) : super(key: key);

  static const receiveNotificationsItems = [
    'on email',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [AppbarSearch()],
      ),
      body: _buildBody(context),
      bottomNavigationBar: const NavigationMenu(selectedIndex: 4),
    );
  }

  Widget _buildBody(BuildContext context) {
    final i18next = I18Next.of(context);
    final notificationToggle = useState(false);
    QueryHookResult<Object?> findAllListsByListType;
    findAllListsByListType = useQuery(
      QueryOptions(
        document: FindAllListsByListTypeQuery(variables: FindAllListsByListTypeArguments()).document,
        variables: {"list_type": ListType.savedSearches.value},
        fetchPolicy: FetchPolicy.noCache,
      ),
    );

    final resultLists = findAllListsByListType.result;
    if (resultLists.hasException) {
      return Text(resultLists.exception.toString());
    }
    if (resultLists.isLoading) {
      return const Center(child: CircularProgressIndicator.adaptive());
    }
    if (resultLists.data == null) {
      return Center(
        child: Text(
          "No data",
          style: Theme.of(context).textTheme.bodySmall,
        ),
      );
    }
    final mySavedLists = FindAllListsByListType$Query.fromJson(resultLists.data!).findMyLists;

    final removeListResult = useMutation(
      MutationOptions(
        document: RemoveListMutation(variables: RemoveListArguments(list_id: 0)).document,
        fetchPolicy: FetchPolicy.cacheFirst,
        // ignore: void_checks
      ),
    );

    List<SavedSearchList> listSavedSearchList = [];

    for (var savedList in mySavedLists) {
      final searchParamsRaw = savedList.searchParams;
      final searchParamsForQuery = jsonDecode(searchParamsRaw);
      final jsonMap = searchParamsForQuery as Map<String, dynamic>;
      // print(jsonMap);

      final listCategoriesForDisplay = FilterService.createCategoryListFromSavedSearchParams(jsonMap);
      SavedSearchList savedSearch = SavedSearchList(savedSearchList: savedList, savedSearchCategories: listCategoriesForDisplay, searchParamsForQuery: jsonMap);
      listSavedSearchList.add(savedSearch);
    }
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, bottom: 20),
              child: Text(
                i18next!.t('i18n:savedSearches'),
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: listSavedSearchList.length,
              itemBuilder: (context, index) {
                final savedSearchList = listSavedSearchList[index];
                return GestureDetector(
                  child: Container(
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text(
                                savedSearchList.savedSearchList.title,
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const FaIcon(FontAwesomeIcons.pen),
                              iconSize: 15,
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {
                                removeListResult.runMutation(
                                  {
                                    "list_id": int.parse(savedSearchList.savedSearchList.listId),
                                  },
                                );
                                Navigator.popAndPushNamed(context, savedSearchesScreenRoute);
                              },
                              icon: const FaIcon(FontAwesomeIcons.trashCan),
                              iconSize: 18,
                            )
                          ],
                        ),
                        const Spacer(),
                        //Builds list of chosen filters
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          // child: Expanded(
                          child: ChosenFiltersList(chosenCategories: savedSearchList.savedSearchCategories),
                          // ),
                        ),
                        const Spacer(),
                        Row(
                          children: [
                            Transform.scale(
                              scale: 0.80,
                              child: Switch(
                                value: notificationToggle.value,
                                onChanged: (value) {
                                  notificationToggle.value = value;
                                  savedSearchList.notificationToggle = value;
                                },
                                activeColor: orangeThemeColor,
                              ),
                            ),
                            Text(
                              i18next.t('i18n:receiveNotifications').toUpperCase(),
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            const Spacer(),
                            Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: DropdownButton(
                                //just to match wireframe for now, add funcionality later
                                value: receiveNotificationsItems[0],
                                items: receiveNotificationsItems.map((e) {
                                  return DropdownMenuItem(
                                    value: e,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                        right: 20.0,
                                        left: 10,
                                      ),
                                      child: Text(
                                        e.toUpperCase(),
                                        style: Theme.of(context).textTheme.bodySmall,
                                      ),
                                    ),
                                  );
                                }).toList(),
                                onChanged: ((value) {}),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  onTap: () {
                    FilterService.chosenCategoryList = savedSearchList.savedSearchCategories;
                    Navigator.pushNamed(
                      context,
                      homeScreenRoute,
                      arguments: FilterArguments(
                        adWhereInput: savedSearchList.searchParamsForQuery,
                      ),
                    );
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
