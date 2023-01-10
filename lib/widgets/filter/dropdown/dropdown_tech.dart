import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:i18next/i18next.dart';
import '../../../classes/filter_parameters.dart';

class DropdownTech extends HookWidget {
  const DropdownTech({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final i18next = I18Next.of(context);

    //Tech dropdown filter parameters
    final enginePowerParams = FilterParamsDropdownTech("enginePower", i18next!);
    final cubicCapacityParams = FilterParamsDropdownTech("cubicCapacity", i18next);
    final emissionClassParams = FilterParamsDropdownTech("emissionClass", i18next);

    final Map<FilterParamsDropdownTech, ValueNotifier> dropdownGeneralMap = {
      enginePowerParams: useState(null),
      cubicCapacityParams: useState(null),
      emissionClassParams: useState(null),
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
          items: paramsObject.dropdownItems.map((String value) {
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
