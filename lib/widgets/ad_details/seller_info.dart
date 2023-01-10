import 'package:flutter/material.dart';
import 'package:i18next/i18next.dart';
import '../../utils/themes.dart';

class SellerInfo extends StatelessWidget {
  const SellerInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final I18Next i18next = I18Next.of(context)!;
    return Container(
      height: 440,
      width: double.infinity,
      color: lightGrayBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.only(left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Text(
                "SELLER",
                style: CustomDarkTextStyle.h1(context),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                children: [
                  const Icon(
                    Icons.person_pin,
                    size: 40,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Text(
                      "Seller name",
                      style: CustomDarkTextStyle.h1(context),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, bottom: 5),
              child: Text(
                "Adress: Giuseppe Carabino 20, 51000 Rijeka",
                style: CustomDarkTextStyle.bodyLarge(context),
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Phone: ",
                    style: CustomDarkTextStyle.bodyMedium(context),
                  ),
                  TextSpan(
                    text: "051 265 845",
                    style: CustomDarkTextStyle.h3(context),
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Website: ",
                    style: CustomDarkTextStyle.bodyMedium(context),
                  ),
                  TextSpan(
                    text: "www.foxcar.com",
                    style: CustomDarkTextStyle.h3(context),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 5),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Email: ",
                      style: CustomDarkTextStyle.bodyMedium(context),
                    ),
                    TextSpan(
                      text: "info@foxcar.com",
                      style: CustomDarkTextStyle.h3(context),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              "Bussiness hours:\nMon - Fri: 08-16, Sat - Sun: closed",
              style: CustomDarkTextStyle.bodyLarge(context),
            ),
            // Seller rating
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: const [
                  Icon(
                    Icons.star_rounded,
                    color: greenIndicationColor,
                  ),
                  Icon(
                    Icons.star_rounded,
                    color: greenIndicationColor,
                  ),
                  Icon(
                    Icons.star_rounded,
                    color: greenIndicationColor,
                  ),
                  Icon(
                    Icons.star_rounded,
                    color: greenIndicationColor,
                  ),
                  Icon(
                    Icons.star_rounded,
                    color: greenIndicationColor,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                "4.5 rating",
                style: CustomDarkTextStyle.bodyLarge(context),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: InkWell(
                child: Text(
                  "SEE ALL ADS FROM THIS DEALER",
                  style: CustomDarkTextStyle.h1(context),
                ),
                onTap: () => ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(i18next.t("i18n:functionalityNotImplemented")),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: SizedBox(
                width: 110,
                height: 30,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: orangeThemeColor,
                  ),
                  onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(i18next.t("i18n:functionalityNotImplemented")),
                    ),
                  ),
                  child: Text(
                    "SEND MESSAGE",
                    style: CustomWhiteTextStyle.bodyLarge(context),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
