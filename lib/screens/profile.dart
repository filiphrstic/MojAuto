import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_profile_picture/flutter_profile_picture.dart';
import 'package:get/get.dart';
import 'package:i18next/i18next.dart';
import '../authentication/authentication_service.dart';
import '../authentication/oauth.dart';
import '../internationalization/supported_locales.dart';
import '../navigation/routes.dart';
import '../utils/themes.dart';
import '../authentication/user_data.dart';

class ProfileScreen extends HookWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selectedLanguage = useState(SupportedLocales().languagePickerSetBools(Get.locale));
    final selectedLanguageHelper = <bool>[false, false];
    final i18next = I18Next.of(context);

    return Scaffold(
      // bottomNavigationBar: const NavigationMenu(selectedIndex: 4),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AuthenticationService().isLoggedIn()
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 15, top: 45, bottom: 15),
                              child: InkWell(
                                onTap: () {
                                  Navigator.pushNamed(context, userDetailsScreenRoute);
                                },
                                child: ProfilePicture(
                                  name: UserData.getFullName(),
                                  radius: 28,
                                  fontsize: 18,
                                ),
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              icon: const Icon(
                                Icons.close_rounded,
                                size: 30,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, bottom: 15),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5),
                                child: Text(
                                  UserData.getFullName(),
                                  style: CustomDarkTextStyle.bodyLarge(context),
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    UserData.getEmail(),
                                    style: CustomDarkTextStyle.bodyLarge(context),
                                  ),
                                  const Spacer(),
                                  Padding(
                                    padding: const EdgeInsets.only(right: 20),
                                    child: IconButton(
                                      padding: EdgeInsets.zero,
                                      constraints: const BoxConstraints(),
                                      onPressed: () {
                                        Navigator.pushNamed(context, userDetailsScreenRoute);
                                      },
                                      icon: const Icon(
                                        Icons.arrow_drop_down,
                                        size: 30,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 30.0),
                      child: Container(
                        height: 1.5,
                        width: MediaQuery.of(context).size.width,
                        color: navigationBarBackgroudColor,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        i18next!.t('i18n:myProfile'),
                      ),
                    ),
                    TextButton.icon(
                      style: TextButton.styleFrom(
                        minimumSize: Size.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      onPressed: () => Navigator.pushNamed(context, favoritesScreenRoute),
                      icon: const Icon(Icons.favorite_rounded),
                      label: Text(
                        i18next.t('i18n:favorites'),
                      ),
                    ),
                    TextButton.icon(
                      style: TextButton.styleFrom(
                        minimumSize: Size.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      onPressed: () => Navigator.pushNamed(context, savedSearchesScreenRoute),
                      icon: const Icon(Icons.archive_rounded),
                      label: Text(
                        i18next.t('i18n:savedSearches'),
                      ),
                    ),
                    TextButton.icon(
                      style: TextButton.styleFrom(
                        minimumSize: Size.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      onPressed: () => Navigator.pushNamed(context, notificationsScreenRoute),
                      icon: const Icon(Icons.notifications_none_rounded),
                      label: Text(
                        i18next.t('i18n:notifications'),
                      ),
                    ),
                    TextButton.icon(
                      style: TextButton.styleFrom(
                        minimumSize: Size.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      onPressed: () => Navigator.pushNamed(context, myAdsScreenRoute),
                      icon: const Icon(Icons.drive_eta_rounded),
                      label: Text(
                        i18next.t('i18n:myAds'),
                      ),
                    ),
                    TextButton.icon(
                      style: TextButton.styleFrom(
                        minimumSize: Size.zero,
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      ),
                      onPressed: () => Navigator.pushNamed(context, analyticsScreenRoute),
                      icon: const Icon(Icons.bar_chart_rounded),
                      label: Text(
                        i18next.t('i18n:analytics'),
                      ),
                    ),
                  ],
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.only(bottom: 20),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 5,
                            offset: const Offset(0, 2),
                          ),
                        ],
                      ),
                      height: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            i18next!.t('i18n:logInToUse'),
                          ),
                          TextButton(
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.symmetric(horizontal: 50),
                              backgroundColor: orangeThemeColor,
                            ),
                            onPressed: () {
                              AuthServerConfig().login(context, profileScreenRoute);
                            },
                            child: Text(
                              i18next.t("i18n:login").toUpperCase(),
                              style: CustomWhiteTextStyle.bodyLarge(context),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
          TextButton.icon(
            style: TextButton.styleFrom(
              minimumSize: Size.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            onPressed: () => Navigator.pushNamed(context, settingsScreenRoute),
            icon: const Icon(Icons.settings_rounded),
            label: Text(
              i18next.t('i18n:settings'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 5),
            child: Row(
              children: [
                ToggleButtons(
                  direction: Axis.horizontal,
                  onPressed: (int index) {
                    for (int i = 0; i < selectedLanguage.value.length; i++) {
                      selectedLanguageHelper[i] = i == index;
                      SupportedLocales().updateLanguage(SupportedLocales.locale[index]);
                    }
                    selectedLanguage.value = selectedLanguageHelper;
                  },
                  selectedColor: primaryColor,
                  color: primaryColor,
                  constraints: const BoxConstraints(
                    minHeight: 30.0,
                    minWidth: 60.0,
                  ),
                  fillColor: Colors.transparent,
                  isSelected: selectedLanguage.value,
                  children: [
                    Text(
                      'HR',
                      style: selectedLanguage.value[0] ? CustomDarkTextStyle.h2(context) : CustomGrayTextStyle.bodyLarge(context),
                    ),
                    Text(
                      'EN',
                      style: selectedLanguage.value[1] ? CustomDarkTextStyle.h2(context) : CustomGrayTextStyle.bodyLarge(context),
                    ),
                  ],
                )
              ],
            ),
          ),
          const Spacer(),
          (AuthenticationService().isLoggedIn())
              ? TextButton.icon(
                  onPressed: () => AuthServerConfig().endSession(context),
                  icon: const Icon(Icons.logout_rounded),
                  label: Text(
                    i18next.t('i18n:logOut'),
                  ),
                )
              : TextButton.icon(
                  onPressed: () => AuthServerConfig().login(context, profileScreenRoute),
                  icon: const Icon(Icons.login_rounded),
                  label: Text(
                    i18next.t('i18n:login'),
                  ),
                ),
          TextButton(
            style: TextButton.styleFrom(
              minimumSize: Size.zero,
              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            onPressed: () {},
            child: Text(
              i18next.t('i18n:termsAndConditions'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 20),
            child: TextButton(
              style: TextButton.styleFrom(
                minimumSize: Size.zero,
                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              onPressed: () {},
              child: Text(
                i18next.t('i18n:privacyPolicy'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
