import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:i18next/i18next.dart';
import '../../../classes/filter_parameters.dart';

class CheckboxExteriorColor extends HookWidget {
  const CheckboxExteriorColor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final i18next = I18Next.of(context);

    //Checkbox parameters
    final checkboxParamsExteriorColor = FilterParamsCheckboxExteriorColor(i18next!);

    final Map<String, ValueNotifier> checkboxMapBodyOptions = {
      checkboxParamsExteriorColor.checkboxItems[0]: useState(false),
      checkboxParamsExteriorColor.checkboxItems[1]: useState(false),
      checkboxParamsExteriorColor.checkboxItems[2]: useState(false),
      checkboxParamsExteriorColor.checkboxItems[3]: useState(false),
      checkboxParamsExteriorColor.checkboxItems[4]: useState(false),
      checkboxParamsExteriorColor.checkboxItems[5]: useState(false),
    };

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: checkboxMapBodyOptions.length,
      itemBuilder: (context, index) {
        final checkboxValue = checkboxMapBodyOptions.values.elementAt(index);
        final checkboxTitle = checkboxMapBodyOptions.keys.elementAt(index);
        return CheckboxListTile(
          visualDensity: VisualDensity.compact,
          title: Text(checkboxTitle),
          value: checkboxValue.value,
          controlAffinity: ListTileControlAffinity.leading,
          onChanged: (bool? value) {
            checkboxValue.value = value!;
          },
        );
      },
    );
  }
}
