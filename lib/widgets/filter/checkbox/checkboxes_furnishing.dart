import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:i18next/i18next.dart';
import '../../../classes/filter_parameters.dart';

class CheckboxFurnishing extends HookWidget {
  const CheckboxFurnishing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final i18next = I18Next.of(context);

    //Checkbox parameters
    final checkboxParamsFurnishing = FilterParamsCheckboxFurnishing(i18next!);

    final Map<String, ValueNotifier> checkboxMapBodyOptions = {
      checkboxParamsFurnishing.checkboxItems[0]: useState(false),
      checkboxParamsFurnishing.checkboxItems[1]: useState(false),
      checkboxParamsFurnishing.checkboxItems[2]: useState(false),
      checkboxParamsFurnishing.checkboxItems[3]: useState(false),
      checkboxParamsFurnishing.checkboxItems[4]: useState(false),
      checkboxParamsFurnishing.checkboxItems[5]: useState(false),
      checkboxParamsFurnishing.checkboxItems[6]: useState(false),
      checkboxParamsFurnishing.checkboxItems[7]: useState(false),
      checkboxParamsFurnishing.checkboxItems[8]: useState(false),
      checkboxParamsFurnishing.checkboxItems[9]: useState(false),
      checkboxParamsFurnishing.checkboxItems[10]: useState(false),
      checkboxParamsFurnishing.checkboxItems[11]: useState(false),
      checkboxParamsFurnishing.checkboxItems[12]: useState(false),
      checkboxParamsFurnishing.checkboxItems[13]: useState(false),
      checkboxParamsFurnishing.checkboxItems[14]: useState(false),
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
