import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:i18next/i18next.dart';
import '../../../classes/filter_parameters.dart';
import '../../../data/graphql/schema.generated.graphql.dart';

class BasicCategories extends HookWidget {
  final Function? onChangeBrand;
  final Function? onChangeModel;
  final Function? onChangeFuel;
  final Function? onChangeVariant;
  final Function? onChangeBodyType;
  final Function? onChangeCondition;
  final Function? onChangeTransmission;
  final String dropdownsToCreate;
  final List<FindAllCategories$Query$Category> categories;

  const BasicCategories(
      {super.key,
      this.onChangeBrand,
      this.onChangeModel,
      this.onChangeFuel,
      this.onChangeVariant,
      this.onChangeBodyType,
      this.onChangeCondition,
      this.onChangeTransmission,
      required this.dropdownsToCreate,
      required this.categories});

  @override
  Widget build(BuildContext context) {
    final i18next = I18Next.of(context);

    final adAutoMakeType = <FindAllCategories$Query$Category>[];
    final adAutoModel = <FindAllCategories$Query$Category>[];
    final adAutoFuelType = <FindAllCategories$Query$Category>[];
    final adAutoVariant = <FindAllCategories$Query$Category>[];
    final adAutoBodyType = <FindAllCategories$Query$Category>[];
    final adAutoCondition = <FindAllCategories$Query$Category>[];
    final adAutoTransmission = <FindAllCategories$Query$Category>[];

    for (var i = 0; i < categories.length; i++) {
      switch (categories[i].code) {
        case "AdAutoMakeType":
          adAutoMakeType.add(categories[i]);
          break;
        case "AdAutoModel":
          adAutoModel.add(categories[i]);
          break;
        case "AdAutoFuelType":
          adAutoFuelType.add(categories[i]);
          break;
        case "AdAutoVariant":
          adAutoVariant.add(categories[i]);
          break;
        case "AdAutoBodyType":
          adAutoBodyType.add(categories[i]);
          break;
        case "AdAutoConditionType":
          adAutoCondition.add(categories[i]);
          break;
        case "AdAutoTransmissionType":
          adAutoTransmission.add(categories[i]);
          break;
      }
    }

    //Basic category filter parameters
    final brandParams = FilterParamsDropdownBasic("brand", i18next!, categories: adAutoMakeType);
    final modelParams = FilterParamsDropdownBasic("model", i18next, categories: adAutoModel);
    final fuelParams = FilterParamsDropdownBasic("fuelType", i18next, categories: adAutoFuelType);
    final variantParams = FilterParamsDropdownBasic("variant", i18next, categories: adAutoVariant);
    final bodyTypeParams = FilterParamsDropdownBasic("bodyType", i18next, categories: adAutoBodyType);
    final conditionParams = FilterParamsDropdownBasic("condition", i18next, categories: adAutoCondition);
    final transmissionParams = FilterParamsDropdownBasic("transmission", i18next, categories: adAutoTransmission);

    final Map<FilterParamsDropdownBasic, ValueNotifier> dropdownGeneralMap = {
      if (dropdownsToCreate == "brand") brandParams: useState(null),
      if (dropdownsToCreate == "model") modelParams: useState(null),
      if (dropdownsToCreate == "fuelType") fuelParams: useState(null),
      if (dropdownsToCreate == "variant") variantParams: useState(null),
      if (dropdownsToCreate == "bodyType") bodyTypeParams: useState(null),
      if (dropdownsToCreate == "condition") conditionParams: useState(null),
      if (dropdownsToCreate == "transmission") transmissionParams: useState(null),
    };

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: dropdownGeneralMap.length,
      itemBuilder: (context, index) {
        final paramsObject = dropdownGeneralMap.keys.elementAt(index);
        final paramsHook = dropdownGeneralMap.values.elementAt(index);
        return DropdownButton(
          isExpanded: true,
          items: paramsObject.categoriesList!.map((FindAllCategories$Query$Category value) {
            return DropdownMenuItem<FindAllCategories$Query$Category>(
              value: value,
              child: Text(value.name),
            );
          }).toList(),
          onChanged: (value) => {
            paramsHook.value = value,
            if (paramsObject.category == "brand")
              {
                onChangeBrand!(
                  value,
                ),
              },
            if (paramsObject.category == "model")
              {
                onChangeModel!(
                  value,
                ),
              },
            if (paramsObject.category == "fuelType")
              {
                onChangeFuel!(
                  value,
                ),
              },
            if (paramsObject.category == "variant")
              {
                onChangeVariant!(
                  value,
                ),
              },
            if (paramsObject.category == "bodyType")
              {
                onChangeBodyType!(
                  value,
                ),
              },
            if (paramsObject.category == "condition")
              {
                onChangeCondition!(
                  value,
                ),
              },
            if (paramsObject.category == "transmission")
              {
                onChangeTransmission!(
                  value,
                ),
              },
          },
          hint: Text(paramsObject.hint),
          value: paramsHook.value,
        );
      },
    );
  }
}
