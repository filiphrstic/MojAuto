import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:i18next/i18next.dart';
import '../../../classes/filter_parameters.dart';

class CheckboxAdditional extends HookWidget {
  const CheckboxAdditional({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final i18next = I18Next.of(context);

    //Checkbox parameters
    final checkboxParamsAdditional = FilterParamsCheckboxRest(i18next!);

    final Map<String, ValueNotifier> checkboxMapAdditionalOptions = {
      checkboxParamsAdditional.checkboxItems[0]: useState(false),
      checkboxParamsAdditional.checkboxItems[1]: useState(false),
      checkboxParamsAdditional.checkboxItems[2]: useState(false),
      checkboxParamsAdditional.checkboxItems[3]: useState(false),
      checkboxParamsAdditional.checkboxItems[4]: useState(false),
    };

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: checkboxMapAdditionalOptions.length,
      itemBuilder: (context, index) {
        final checkboxValue = checkboxMapAdditionalOptions.values.elementAt(index);
        final checkboxTitle = checkboxMapAdditionalOptions.keys.elementAt(index);
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
