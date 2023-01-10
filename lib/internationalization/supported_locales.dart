import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SupportedLocales {
  final languagePickerBools = <bool>[false, false];

  static const List<Locale> locale = [
    Locale('hr', 'HR'),
    Locale('en', 'US'),
  ];

  List<Locale> getLocales() {
    return locale;
  }

  Locale setLocale(SharedPreferences preferences) {
    Locale defaultLocale = const Locale('en', 'US');
    if (preferences.getString('languageCode') != null) {
      defaultLocale = Locale(preferences.getString('languageCode')!, preferences.getString('countryCode'));
    } else if (getLocales().contains(Get.deviceLocale)) {
      defaultLocale = Get.deviceLocale!;
    }
    languagePickerSetBools(defaultLocale);
    return defaultLocale;
  }

  List<bool> languagePickerSetBools(Locale? activeLocale) {
    for (var i = 0; i < locale.length; i++) {
      languagePickerBools[i] = locale[i].countryCode == activeLocale!.countryCode && locale[i].languageCode == activeLocale.languageCode;
    }
    return languagePickerBools;
  }

  updateLanguage(Locale locale) async {
    Get.updateLocale(locale);
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('languageCode', locale.languageCode);
    await prefs.setString('countryCode', locale.countryCode!);
  }
}
