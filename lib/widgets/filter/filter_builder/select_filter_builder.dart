import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:i18next/i18next.dart';
import 'package:mobile/utils/themes.dart';
import 'package:mobile/widgets/filter/filter_builder/filter_popup/popup_select_category.dart';
import 'package:mobile/widgets/filter/filter_builder/filter_popup/popup_select_int.dart';
import '../../../classes/category.dart';
import '../../../utils/enums.dart';

class SelectFilterBuilder extends HookWidget {
  final Category filterElement;

  const SelectFilterBuilder({Key? key, required this.filterElement}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final i18next = I18Next.of(context);

    switch (filterElement.vocabulary.dataType) {
      case DataType.category:
        {
          return TextButton(
            onPressed: () {
              showGeneralDialog(
                context: context,
                pageBuilder: (context, animation1, animation2) {
                  return Container();
                },
                barrierColor: darkBlueThemeColor.withOpacity(0.5),
                transitionBuilder: (context, a1, a2, widget) {
                  final curvedValue = Curves.easeInOutBack.transform(a1.value) - 1.0;
                  return Transform(
                    transform: Matrix4.translationValues(0.0, -curvedValue * 200, 0.0),
                    child: Opacity(
                      opacity: a1.value,
                      child: PopupSelectCategory(filterElement),
                    ),
                  );
                },
                transitionDuration: const Duration(milliseconds: 300),
                barrierDismissible: true,
                barrierLabel: '',
              );
            },
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  i18next!.t("i18n:${filterElement.categoryFilter.name}"),
                  style: CustomDarkTextStyle.bodyLarge(context),
                )),
          );
        }
      case DataType.int:
        {
          return TextButton(
            onPressed: () {
              showGeneralDialog(
                context: context,
                pageBuilder: (context, animation1, animation2) {
                  return Container();
                },
                barrierColor: darkBlueThemeColor.withOpacity(0.5),
                transitionBuilder: (context, a1, a2, widget) {
                  final curvedValue = Curves.easeInOutBack.transform(a1.value) - 1.0;
                  return Transform(
                    transform: Matrix4.translationValues(0.0, -curvedValue * 200, 0.0),
                    child: Opacity(
                      opacity: a1.value,
                      child: PopupSelectInt(filterElement),
                    ),
                  );
                },
                transitionDuration: const Duration(milliseconds: 300),
                barrierDismissible: true,
                barrierLabel: '',
              );
            },
            child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  i18next!.t("i18n:${filterElement.categoryFilter.name}"),
                  style: CustomDarkTextStyle.bodyLarge(context),
                )),
          );
        }
      default:
        {
          return Container();
        }
    }
  }
}
