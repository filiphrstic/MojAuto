import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:i18next/i18next.dart';

/// Builds a price summary label for the price rating
class PriceSummary extends HookWidget {
  final Decimal? priceRating;
  final TextStyle? textStyle;

  const PriceSummary({Key? key, required this.priceRating, required this.textStyle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final I18Next i18next = I18Next.of(context)!;

    if (priceRating == null) {
      return Text(i18next.t("i18n:noRating").toUpperCase(), style: textStyle);
    } else {
      if (Decimal.fromInt(0) <= priceRating! && priceRating! <= Decimal.fromInt(1)) {
        // price rating between 0 and 1
        return Text(i18next.t("i18n:highPrice").toUpperCase(), style: textStyle);
      } else if (Decimal.fromInt(1) < priceRating! && priceRating! <= Decimal.fromInt(2)) {
        // price rating between 1 and 2
        return Text(i18next.t("i18n:increasedPrice").toUpperCase(), style: textStyle);
      } else if (Decimal.fromInt(2) < priceRating! && priceRating! <= Decimal.fromInt(3)) {
        // price rating between 2 and 3
        return Text(i18next.t("i18n:okPrice").toUpperCase(), style: textStyle);
      } else if (Decimal.fromInt(3) < priceRating! && priceRating! <= Decimal.fromInt(4)) {
        // price rating between 3 and 4
        return Text(i18next.t("i18n:goodPrice").toUpperCase(), style: textStyle);
      } else if (Decimal.fromInt(4) < priceRating! && priceRating! <= Decimal.fromInt(5)) {
        // price rating between 4 and 5
        return Text(i18next.t("i18n:excellentPrice").toUpperCase(), style: textStyle);
      } else {
        // price not in the ranges above
        return Text(i18next.t("i18n:noRating").toUpperCase(), style: textStyle);
      }
    }
  }
}
