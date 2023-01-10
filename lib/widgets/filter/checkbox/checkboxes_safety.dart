import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:i18next/i18next.dart';
import '../../../classes/filter_parameters.dart';

class CheckboxSafety extends HookWidget {
  const CheckboxSafety({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final i18next = I18Next.of(context);

    //Checkbox parameters
    final checkboxParamsSafety = FilterParamsCheckboxSafety(i18next!);

    final Map<String, ValueNotifier> checkboxMapBodyOptions = {
      checkboxParamsSafety.checkboxItems[0]: useState(false),
      checkboxParamsSafety.checkboxItems[1]: useState(false),
      checkboxParamsSafety.checkboxItems[2]: useState(false),
      checkboxParamsSafety.checkboxItems[3]: useState(false),
      checkboxParamsSafety.checkboxItems[4]: useState(false),
      checkboxParamsSafety.checkboxItems[5]: useState(false),
      checkboxParamsSafety.checkboxItems[6]: useState(false),
      checkboxParamsSafety.checkboxItems[7]: useState(false),
      checkboxParamsSafety.checkboxItems[8]: useState(false),
      checkboxParamsSafety.checkboxItems[9]: useState(false),
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
