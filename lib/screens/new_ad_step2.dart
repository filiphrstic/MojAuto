// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:i18next/i18next.dart';
import '../data/graphql/schema.generated.graphql.dart';
import '../data/repos/categories/findAllCategories.dart';
import '../navigation/routes.dart';
import '../widgets/filter/dropdown/basic_categories.dart';
import '../utils/themes.dart';
import '../widgets/navigation/navigation_menu.dart';
import '../widgets/navigation/appbar_search.dart';

// ignore: must_be_immutable
class NewAdStep2Screen extends HookWidget {
  final Map<String, dynamic> controllersList;
  NewAdStep2Screen({required this.controllersList, Key? key}) : super(key: key);

  var chosenBrand;
  var chosenModel;
  var chosenFuel;
  var chosenVariant;
  var chosenBodyType;
  var chosenCondition;
  var chosenTransmission;

  @override
  Widget build(BuildContext context) {
    final i18next = I18Next.of(context);
    final result = findAllCategories();
    final categories = FindAllCategories$Query.fromJson(result.data!).findAllCategories;

    final kmController = useTextEditingController.fromValue(TextEditingValue.empty);
    final powerKwController = useTextEditingController.fromValue(TextEditingValue.empty);
    final yearController = useTextEditingController.fromValue(TextEditingValue.empty);
    final priceController = useTextEditingController.fromValue(TextEditingValue.empty);

    return Scaffold(
      appBar: AppBar(
        actions: const [AppbarSearch()],
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Text(
                    i18next!
                        .t(
                          'i18n:whatAreYouSelling',
                        )
                        .toUpperCase(),
                    style: CustomDarkTextStyle.h1(context),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //Basic filters - Brand
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 40,
                    child: BasicCategories(
                      categories: categories,
                      dropdownsToCreate: "brand",
                      onChangeBrand: (newBrand) {
                        chosenBrand = newBrand;
                      },
                    ),
                  ),
                  //Basic filters - Model
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 40,
                    child: BasicCategories(
                      categories: categories,
                      dropdownsToCreate: "model",
                      onChangeModel: (newModel) {
                        chosenModel = newModel;
                      },
                    ),
                  ),
                  //Basic filters - Variant
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 40,
                    child: BasicCategories(
                      categories: categories,
                      dropdownsToCreate: "variant",
                      onChangeVariant: (newVariant) {
                        chosenVariant = newVariant;
                      },
                    ),
                  ),
                  //Basic filters - Body type
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 40,
                    child: BasicCategories(
                      categories: categories,
                      dropdownsToCreate: "bodyType",
                      onChangeBodyType: (newBodyType) {
                        chosenBodyType = newBodyType;
                      },
                    ),
                  ),
                  //Basic filters - Condition
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 40,
                    child: BasicCategories(
                      categories: categories,
                      dropdownsToCreate: "condition",
                      onChangeCondition: (newCondition) {
                        chosenCondition = newCondition;
                      },
                    ),
                  ),
                ],
              ),
              //New ad milleage KM
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: i18next.t('i18n:kilometers'),
                  ),
                  controller: kmController,
                ),
              ),
              //New ad manufacture year
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: i18next.t('i18n:year'),
                  ),
                  controller: yearController,
                ),
              ),
              //New ad power KW
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0, bottom: 10),
                child: TextField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: i18next.t('i18n:powerKW'),
                  ),
                  controller: powerKwController,
                ),
              ),
              //Basic filters - FuelType
              SizedBox(
                width: MediaQuery.of(context).size.width - 40,
                child: BasicCategories(
                  categories: categories,
                  dropdownsToCreate: "fuelType",
                  onChangeFuel: (newFuel) {
                    chosenFuel = newFuel;
                  },
                ),
              ),
              //Basic filters - Transmission
              SizedBox(
                width: MediaQuery.of(context).size.width - 40,
                child: BasicCategories(
                  categories: categories,
                  dropdownsToCreate: "transmission",
                  onChangeTransmission: (newTransmission) {
                    chosenTransmission = newTransmission;
                  },
                ),
              ),
              //New ad price
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: i18next.t('i18n:price'),
                  ),
                  controller: priceController,
                ),
              ),
              //Next button
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 60),
                child: TextButton(
                  style: TextButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    backgroundColor: orangeThemeColor,
                  ),
                  onPressed: () {
                    try {
                      controllersList.addAll({
                        "km": int.tryParse(kmController.value.text),
                        "power_kw": int.tryParse(powerKwController.value.text),
                        "year": int.parse(yearController.value.text),
                        "price": int.tryParse(priceController.value.text),
                        "brand_id": int.parse(chosenBrand.categoryId),
                        "model_id": int.parse(chosenModel.categoryId),
                        "variant_id": int.parse(chosenVariant.categoryId),
                        "bodyType_id": int.parse(chosenBodyType.categoryId),
                        "condition_id": int.parse(chosenCondition.categoryId),
                        "fuelType_id": int.parse(chosenFuel.categoryId),
                        "transmission_id": int.parse(chosenTransmission.categoryId),
                      });
                      controllersList.removeWhere((key, value) => value.toString().isEmpty || value == null);
                      Navigator.pushNamed(
                        context,
                        newAdStep3ScreenRoute,
                        arguments: controllersList,
                      );
                      // ignore: unused_catch_clause
                    } on NoSuchMethodError catch (e) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(i18next.t("i18n:pleaseFillOutRequiredFields")),
                        ),
                      );
                      // ignore: unused_catch_clause
                    } on FormatException catch (e) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(i18next.t("i18n:pleaseFillOutRequiredFields")),
                        ),
                      );
                    }
                  },
                  child: Text(
                    i18next.t("i18n:next").toUpperCase(),
                    style: CustomWhiteTextStyle.bodyLarge(context),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const NavigationMenu(selectedIndex: 2),
    );
  }
}
