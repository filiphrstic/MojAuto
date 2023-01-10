import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:i18next/i18next.dart';
import 'package:mobile/utils/themes.dart';
import 'package:mobile/widgets/filter/filter_builder/filter_popup/popup_range_int.dart';
import '../../../classes/category.dart';
import '../../../utils/enums.dart';

class RangeFilterBuilder extends HookWidget {
  final Category filterElement;

  const RangeFilterBuilder({Key? key, required this.filterElement}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final i18next = I18Next.of(context);

    switch (filterElement.vocabulary.dataType) {
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
                      child: PopupRangeInt(filterElement),
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
      case DataType.dateTime:
        {
          return Container();
        }
      default:
        return Container();
    }
  }
}
