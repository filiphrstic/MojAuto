import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

/// Returns a specific icon for provided price rating
class PriceIndicator extends HookWidget {
  final Decimal? priceRating;

  const PriceIndicator({Key? key, required this.priceRating}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (priceRating == null) {
      return Image.asset(
        "assets/price_rating/no_rating.png",
        height: 14,
      );
    } else {
      if (Decimal.fromInt(0) <= priceRating! && priceRating! <= Decimal.fromInt(1)) {
        // price rating between 0 and 1
        return Image.asset(
          "assets/price_rating/high_price.png",
          height: 14,
        );
      } else if (Decimal.fromInt(1) < priceRating! && priceRating! <= Decimal.fromInt(2)) {
        // price rating between 1 and 2
        return Image.asset(
          "assets/price_rating/increased_price.png",
          height: 14,
        );
      } else if (Decimal.fromInt(2) < priceRating! && priceRating! <= Decimal.fromInt(3)) {
        // price rating between 2 and 3
        return Image.asset(
          "assets/price_rating/ok_price.png",
          height: 14,
        );
      } else if (Decimal.fromInt(3) < priceRating! && priceRating! <= Decimal.fromInt(4)) {
        // price rating between 3 and 4
        return Image.asset(
          "assets/price_rating/good_price.png",
          height: 14,
        );
      } else if (Decimal.fromInt(4) < priceRating! && priceRating! <= Decimal.fromInt(5)) {
        // price rating between 4 and 5
        return Image.asset(
          "assets/price_rating/excellent_price.png",
          height: 14,
        );
      } else {
        // price not in the ranges above
        return Image.asset(
          "assets/price_rating/no_rating.png",
          height: 14,
        );
      }
    }
  }
}
