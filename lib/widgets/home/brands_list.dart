import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:get/get.dart';
import 'package:i18next/i18next.dart';
import '../../data/repos/categories/findAllCategories.dart';
import '../../classes/brand.dart';
import '../../data/graphql/schema.generated.graphql.dart';
import '../../navigation/routes.dart';
import '../../screen_arguments/filter_arguments.dart';
import '../../utils/themes.dart';

/// Builds trending brands listView
class BrandsList extends HookWidget {
  const BrandsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final I18Next i18next = I18Next.of(context)!;

    const String defaultSorting = "asc";
    const int chosenMinimumPrice = 0;
    const int chosenMaximumPrice = 100000000;

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

    final categories = FindAllCategories$Query.fromJson(categoriesResult.data!).findAllCategories;

    FindAllCategories$Query$Category? renaultBrandCategory = categories.firstWhereOrNull(
      (element) => element.code == "AdAutoMakeType" && element.name == "Renault",
    );
    FindAllCategories$Query$Category? volkswagenBrandCategory = categories.firstWhereOrNull(
      (element) => element.code == "AdAutoMakeType" && element.name == "Volkswagen",
    );
    FindAllCategories$Query$Category? audiBrandCategory = categories.firstWhereOrNull(
      (element) => element.code == "AdAutoMakeType" && element.name == "Audi",
    );
    FindAllCategories$Query$Category? peugeotBrandCategory = categories.firstWhereOrNull(
      (element) => element.code == "AdAutoMakeType" && element.name == "Peugeot",
    );
    FindAllCategories$Query$Category? opelBrandCategory = categories.firstWhereOrNull(
      (element) => element.code == "AdAutoMakeType" && element.name == "Opel",
    );
    FindAllCategories$Query$Category? fordBrandCategory = categories.firstWhereOrNull(
      (element) => element.code == "AdAutoMakeType" && element.name == "Ford",
    );
    FindAllCategories$Query$Category? mercedesBrandCategory = categories.firstWhereOrNull(
      (element) => element.code == "AdAutoMakeType" && element.name == "Mercedes",
    );
    FindAllCategories$Query$Category? bmwBrandCategory = categories.firstWhereOrNull(
      (element) => element.code == "AdAutoMakeType" && element.name == "BMW",
    );

    // Todo: replace by query db brands by code = AdAutoMakeType when icons are there
    final List<Brand> brands = [];

    brands.add(Brand("Renault", "assets/brand_logos/Renault_logo.png", renaultBrandCategory));
    brands.add(Brand("Volkswagen", "assets/brand_logos/Volkswagen_logo.png", volkswagenBrandCategory));
    brands.add(Brand("Audi", "assets/brand_logos/Audi_logo.png", audiBrandCategory));
    brands.add(Brand("Peugeot", "assets/brand_logos/Peugeot_logo.png", peugeotBrandCategory));
    brands.add(Brand("Opel", "assets/brand_logos/Opel_logo.png", opelBrandCategory));
    brands.add(Brand("Ford", "assets/brand_logos/Ford_logo.png", fordBrandCategory));
    brands.add(Brand("Mercedes", "assets/brand_logos/Mercedes_logo.png", mercedesBrandCategory));
    brands.add(Brand("BMW", "assets/brand_logos/BMW_logo.png", bmwBrandCategory));

    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: brands.length,
        itemBuilder: (context, index) {
          final Brand brand = brands[index];

          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Column(
              children: [
                InkWell(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                    ),
                    width: 60,
                    height: 60,
                    child: Image.asset(
                      width: 40,
                      height: 40,
                      brand.iconUrl,
                    ),
                  ),
                  onTap: () => Navigator.pushNamed(
                    context,
                    filterResultsScreenRoute,
                    arguments: FilterArguments(
                      // saveSearchBool: false,
                      bottomPrice: chosenMinimumPrice,
                      topPrice: chosenMaximumPrice,
                      orderBy: defaultSorting,
                      brand: brand.brandCategory,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Text(
                    brand.name,
                    style: CustomDarkTextStyle.bodyMedium(context),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
