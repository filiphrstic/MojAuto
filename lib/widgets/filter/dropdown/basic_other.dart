import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:i18next/i18next.dart';
import '../../../data/repos/categories/findAllCategories.dart';
import '../../../classes/filter_parameters.dart';
import '../../../data/graphql/schema.generated.graphql.dart';

class BasicOther extends HookWidget {
  final String dropdownsToCreate;

  const BasicOther({
    super.key,
    required this.dropdownsToCreate,
  });

  @override
  Widget build(BuildContext context) {
    final i18next = I18Next.of(context);

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
          "No data",
          style: Theme.of(context).textTheme.bodyText2,
        ),
      );
    }
    final categories = FindAllCategories$Query.fromJson(result.data!).findAllCategories;

    final locationCountry = <String>[];
    final locationCity = <String>[];

    for (var i = 0; i < categories.length; i++) {
      switch (categories[i].code) {
        case "LocationCountry":
          locationCountry.add(categories[i].name);
          break;
        case "LocationCity":
          locationCity.add(categories[i].name);
          break;
      }
    }

    //Basic other filter parameters (which are not Category type in DB)
    final milleageParams = FilterParamsDropdownBasic("milleage", i18next!);
    final vatParams = FilterParamsDropdownBasic("vat", i18next);
    final yearParams = FilterParamsDropdownBasic("year", i18next);
    final doorsParams = FilterParamsDropdownBasic("doors", i18next);
    final seatsParams = FilterParamsDropdownBasic("seats", i18next);
    final countryParams = FilterParamsDropdownBasic("country", i18next, items: locationCountry);
    final cityParams = FilterParamsDropdownBasic("city", i18next, items: locationCity);
    final radiusParams = FilterParamsDropdownBasic("radius", i18next);

    final Map<FilterParamsDropdownBasic, ValueNotifier> dropdownGeneralMap = {
      if (dropdownsToCreate == "milleage") milleageParams: useState(null),
      if (dropdownsToCreate == "vat") vatParams: useState(null),
      if (dropdownsToCreate == "year") yearParams: useState(null),
      if (dropdownsToCreate == "doors") doorsParams: useState(null),
      if (dropdownsToCreate == "seats") seatsParams: useState(null),
      if (dropdownsToCreate == "country") countryParams: useState(null),
      if (dropdownsToCreate == "city") cityParams: useState(null),
      if (dropdownsToCreate == "radius") radiusParams: useState(null),
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
          items: paramsObject.dropdownItems!.map((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (value) => {
            paramsHook.value = value,
          },
          hint: Text(paramsObject.hint),
          value: paramsHook.value,
        );
      },
    );
  }
}
