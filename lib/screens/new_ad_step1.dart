import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart' show HookWidget, useTextEditingController;
import 'package:i18next/i18next.dart';
import '../navigation/routes.dart';
import '../widgets/navigation/navigation_menu.dart';
import '../utils/themes.dart';
import '../widgets/navigation/appbar_search.dart';

class NewAdStep1Screen extends HookWidget {
  const NewAdStep1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final i18next = I18Next.of(context);

    final titleController = useTextEditingController.fromValue(TextEditingValue.empty);
    final textController = useTextEditingController.fromValue(TextEditingValue.empty);
    Map<String, dynamic> controllersList = {};

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
              Padding(
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
                child: Text(
                  i18next.t('i18n:infoAd').toUpperCase(),
                  style: CustomDarkTextStyle.h1(context),
                ),
              ),
              //New ad title
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    labelText: i18next.t('i18n:title'),
                  ),
                  controller: titleController,
                ),
              ),
              //New ad description
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 10.0),
                child: TextField(
                    maxLines: 8,
                    decoration: InputDecoration(
                      alignLabelWithHint: true,
                      border: const OutlineInputBorder(),
                      labelText: i18next.t('i18n:description'),
                    ),
                    controller: textController),
              ),
              //Next button
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
                child: TextButton(
                  style: TextButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    backgroundColor: orangeThemeColor,
                  ),
                  onPressed: () {
                    if (titleController.value.text.isEmpty || textController.value.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(i18next.t("i18n:titleAndDescriptionAreMandatory")),
                        ),
                      );
                    } else {
                      controllersList.addAll(
                        {
                          "title": titleController.value.text,
                          "text": textController.value.text,
                        },
                      );
                      Navigator.pushNamed(
                        context,
                        newAdStep2ScreenRoute,
                        arguments: controllersList,
                      );
                    }
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
      bottomNavigationBar: const NavigationMenu(
        selectedIndex: 3,
      ),
    );
  }
}
