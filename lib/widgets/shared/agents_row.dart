import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:i18next/i18next.dart';

import '../../utils/themes.dart';

/// Builds a row displying agents selection
class AgentsRow extends HookWidget {
  const AgentsRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final I18Next i18next = I18Next.of(context)!;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        InkWell(
          child: Column(
            children: [
              Text(
                i18next.t("i18n:salesAgent"),
                textAlign: TextAlign.center,
                style: CustomDarkTextStyle.bodyLarge(context),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: 50,
                  width: 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 0.5),
                  ),
                  child: Text(
                    "Agent logo 1",
                    textAlign: TextAlign.center,
                    style: CustomDarkTextStyle.bodyMedium(context),
                  ),
                ),
              ),
            ],
          ),
          onTap: () => ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                i18next.t("i18n:functionalityNotImplemented"),
              ),
            ),
          ),
        ),
        InkWell(
          child: Column(
            children: [
              Text(
                i18next.t("i18n:leasingAgent"),
                textAlign: TextAlign.center,
                style: CustomDarkTextStyle.bodyLarge(context),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: 50,
                  width: 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 0.5),
                  ),
                  child: Text(
                    "Agent logo 2",
                    textAlign: TextAlign.center,
                    style: CustomDarkTextStyle.bodyMedium(context),
                  ),
                ),
              ),
            ],
          ),
          onTap: () => ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                i18next.t("i18n:functionalityNotImplemented"),
              ),
            ),
          ),
        ),
        InkWell(
          child: Column(
            children: [
              Text(
                i18next.t("i18n:insuranceAgent"),
                textAlign: TextAlign.center,
                style: CustomDarkTextStyle.bodyLarge(context),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Container(
                  height: 50,
                  width: 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(width: 0.5),
                  ),
                  child: Text(
                    "Agent logo 3",
                    textAlign: TextAlign.center,
                    style: CustomDarkTextStyle.bodyMedium(context),
                  ),
                ),
              ),
            ],
          ),
          onTap: () => ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                i18next.t("i18n:functionalityNotImplemented"),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
