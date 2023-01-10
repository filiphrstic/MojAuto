import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:i18next/i18next.dart';
import '../../../classes/filter_parameters.dart';

class CheckboxOwnership extends HookWidget {
  const CheckboxOwnership({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final i18next = I18Next.of(context);

    //Checkbox parameters
    final checkboxParamsOwnership = FilterParamsCheckboxOwnership(i18next!);

    final Map<String, ValueNotifier> checkboxMapOwnershipOptions = {
      checkboxParamsOwnership.checkboxItems[0]: useState(false),
      checkboxParamsOwnership.checkboxItems[1]: useState(false),
      checkboxParamsOwnership.checkboxItems[2]: useState(false),
    };

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: checkboxMapOwnershipOptions.length,
      itemBuilder: (context, index) {
        final checkboxValue = checkboxMapOwnershipOptions.values.elementAt(index);
        final checkboxTitle = checkboxMapOwnershipOptions.keys.elementAt(index);
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
