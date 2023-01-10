import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:i18next/i18next.dart';
import '../../classes/sorting_parameters.dart';
import '../../navigation/routes.dart';
import '../../screen_arguments/filter_arguments.dart';
import '../../utils/themes.dart';

//TO BE REMOVED

class FilterResultsSaveSearch extends HookWidget {
  final FilterArguments filterArguments;
  final int adsLength;
  const FilterResultsSaveSearch(this.filterArguments, this.adsLength, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final i18next = I18Next.of(context);
    final dropdownSortingAsc = DropdownSortingItems("asc", i18next!);
    final dropdownSortingDesc = DropdownSortingItems("desc", i18next);
    final sorting = useState(dropdownSortingAsc.fullSortName);

    if (filterArguments.orderBy == dropdownSortingAsc.shortSortName) {
      sorting.value = dropdownSortingAsc.fullSortName;
    } else {
      sorting.value = dropdownSortingDesc.fullSortName;
    }

    // final createList = useMutation(
    //   MutationOptions(
    //     document: CreateListMutation(
    //         variables: CreateListArguments(
    //       title: "",
    //       search_params: "",
    //     )).document,
    //   ),
    // );

    return Container(
      color: navigationBarBackgroudColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 10, left: 30),
            child: Row(
              children: [
                Text(
                  i18next.t('i18n:numberOfAds').toUpperCase(),
                  style: CustomDarkTextStyle.bodyLarge(context),
                ),
                Text(
                  ": $adsLength",
                  style: CustomDarkTextStyle.h1(context),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0),
            child: Directionality(
              textDirection: TextDirection.rtl,
              child: TextButton.icon(
                style: TextButton.styleFrom(
                  minimumSize: const Size(120, 40),
                  backgroundColor: orangeThemeColor,
                  elevation: 2,
                ),
                onPressed: () {
                  Navigator.pushNamed(context, filterScreenRoute);
                },
                icon: const Icon(
                  Icons.add,
                  color: lightTextColor,
                ),
                label: Text(
                  i18next.t(
                    'i18n:filter',
                  ),
                  style: const TextStyle(
                    color: lightTextColor,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, bottom: 20),
            child: SizedBox(
              height: 50,
              width: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: filterArguments.listChosenCategories.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 5.0, top: 15),
                    child: Directionality(
                      textDirection: TextDirection.rtl,
                      child: TextButton.icon(
                        style: TextButton.styleFrom(
                          padding: const EdgeInsets.all(10),
                          backgroundColor: Colors.grey,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          elevation: 2,
                        ),
                        label: Text(
                          filterArguments.listChosenCategories[index].name,
                          style: const TextStyle(color: Colors.white),
                        ),
                        icon: const FaIcon(
                          FontAwesomeIcons.xmark,
                          size: 15,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          filterArguments.listChosenCategories.removeAt(index);
                          Navigator.popAndPushNamed(context, filterResultsScreenRoute, arguments: filterArguments);
                        },
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  i18next.t('i18n:sort'),
                  style: const TextStyle(fontSize: 14),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: SizedBox(
                    width: 140,
                    child: DropdownButton(
                      isExpanded: true,
                      items: <DropdownSortingItems>[
                        dropdownSortingAsc,
                        dropdownSortingDesc,
                      ].map((item) {
                        return DropdownMenuItem<String>(
                          value: item.fullSortName,
                          alignment: Alignment.center,
                          child: Text(
                            item.fullSortName,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        );
                      }).toList(),
                      onChanged: (value) {
                        if (value == dropdownSortingAsc.fullSortName) {
                          sorting.value = dropdownSortingAsc.fullSortName;
                          filterArguments.orderBy = dropdownSortingAsc.shortSortName;
                          Navigator.popAndPushNamed(
                            context,
                            filterResultsScreenRoute,
                            arguments: filterArguments,
                          );
                        } else if (value == dropdownSortingDesc.fullSortName) {
                          sorting.value = dropdownSortingDesc.fullSortName;
                          filterArguments.orderBy = dropdownSortingDesc.shortSortName;
                          Navigator.popAndPushNamed(
                            context,
                            filterResultsScreenRoute,
                            arguments: filterArguments,
                          );
                        }
                      },
                      value: sorting.value,
                    ),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 20),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      minimumSize: const Size(110, 30),
                      backgroundColor: Colors.black,
                      elevation: 2,
                    ),
                    onPressed: () {
                      // if (AuthenticationService().isLoggedIn()) {
                      //   final searchParams = VocabularyService().createSearchParamsFormat(filterArguments.listChosenCategories);
                      //   final createListData = createListMap(searchParams);
                      //   createList.runMutation(createListData);
                      // } else {
                      //   final snackBar = SnackBar(
                      //     content: Text(
                      //       i18next.t(
                      //         'i18n:youNeedToBeLoggedInToUseThisFunctionality',
                      //       ),
                      //     ),
                      //   );
                      //   ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      // }
                    },
                    child: Text(
                      i18next.t(
                        'i18n:saveSearch',
                      ),
                      style: const TextStyle(color: lightTextColor, fontSize: 14),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
