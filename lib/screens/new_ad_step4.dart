import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart' show HookWidget, useTextEditingController;
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:i18next/i18next.dart';
import '../data/graphql/schema.generated.dart';
import '../navigation/routes.dart';
import '../utils/themes.dart';
import '../widgets/navigation/navigation_menu.dart';
import '../widgets/navigation/appbar_search.dart';

class NewAdStep4Screen extends HookWidget {
  final Map<String, dynamic> controllersList;
  const NewAdStep4Screen({required this.controllersList, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final i18next = I18Next.of(context);

    final sellerNameController = useTextEditingController.fromValue(TextEditingValue.empty);
    final sellerAdressController = useTextEditingController.fromValue(TextEditingValue.empty);
    final sellerPhoneController = useTextEditingController.fromValue(TextEditingValue.empty);
    final sellerEmailController = useTextEditingController.fromValue(TextEditingValue.empty);

    final createAd = useMutation(
      MutationOptions(
        document: CreateNewAdMutation(
            variables: CreateNewAdArguments(
          code: '',
          filename: '',
          filesize: 0,
          path: '',
          text: '',
          title: '',
          year: 0,
        )).document,
      ),
    );

    return Scaffold(
      appBar: AppBar(
        actions: const [AppbarSearch()],
      ),
      body: GestureDetector(
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: Text(
                    i18next!
                        .t(
                          'i18n:whatAreYouSelling',
                        )
                        .toUpperCase(),
                    style: CustomDarkTextStyle.h1(context),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: Text(
                  i18next.t('i18n:sellerInfo').toUpperCase(),
                  style: CustomDarkTextStyle.h1(context),
                ),
              ),
              //New ad milleage KM
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: i18next.t('i18n:sellerName'),
                  ),
                  controller: sellerNameController,
                ),
              ),
              //New ad manufacture year
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: i18next.t('i18n:address'),
                  ),
                  controller: sellerAdressController,
                ),
              ),
              //New ad power KW
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: i18next.t('i18n:phone'),
                  ),
                  controller: sellerPhoneController,
                ),
              ),
              //New ad price
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: i18next.t('i18n:email'),
                  ),
                  controller: sellerEmailController,
                ),
              ),
              //Next button
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 40, bottom: 60),
                child: TextButton(
                  style: TextButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    backgroundColor: orangeThemeColor,
                  ),
                  onPressed: () {
                    createAd.runMutation(controllersList);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(i18next.t("i18n:adCreatedSuccessfully")),
                      ),
                    );
                    Navigator.pushNamed(context, myAdsScreenRoute);
                  },
                  child: Text(
                    i18next.t("i18n:next").toUpperCase(),
                    style: CustomWhiteTextStyle.bodyLarge(context),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const NavigationMenu(selectedIndex: 2),
    );
  }
}
