import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:i18next/i18next.dart';
import 'package:mobile/classes/filter_service.dart';
import 'package:mobile/utils/themes.dart';

class ShowAdsWithPicturesButton extends HookWidget {
  const ShowAdsWithPicturesButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final i18next = I18Next.of(context);
    final showAdsWithPictures = useState(FilterService.showAdsWithPictures);
    return Row(
      children: [
        Switch(
          activeColor: orangeThemeColor,
          inactiveThumbColor: darkBlueThemeColor,
          // activeTrackColor: lightGrayBackgroundColor,
          // inactiveTrackColor: lightGrayBackgroundColor,
          value: showAdsWithPictures.value,
          onChanged: (value) {
            showAdsWithPictures.value = value;
            FilterService.showAdsWithPictures = value;
          },
        ),
        Text(
          i18next!.t("i18n:onlyAdsWithPictures"),
          style: CustomDarkTextStyle.bodyLarge(context),
        ),
      ],
    );
  }
}
