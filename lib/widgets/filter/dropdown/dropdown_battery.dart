import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:i18next/i18next.dart';
import '../../../classes/filter_parameters.dart';

class DropdownBattery extends HookWidget {
  const DropdownBattery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final i18next = I18Next.of(context);

    //Battery dropdown filter parameters
    final batteryKindParams = FilterParamsDropdownBattery("batteryKind", i18next!);
    final batteryCapacityParams = FilterParamsDropdownBattery("batteryCapacity", i18next);

    final Map<FilterParamsDropdownBattery, ValueNotifier> dropdownGeneralMap = {
      batteryKindParams: useState(null),
      batteryCapacityParams: useState(null),
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
