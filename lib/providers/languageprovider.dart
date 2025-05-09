import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageProvider extends ChangeNotifier {
  LanguageProvider() {
    fatchLanguageData();
  }
  bool _isBoardingCompleate = false;
  bool get isBoardingCompleate => _isBoardingCompleate;

  set isBoardingCompleate(bool value) {
    _isBoardingCompleate = value;
    boardingCompleated();
    notifyListeners();
  }

  final List<String> _languageList = [
    'English',
    'हिन्दी',
  ];
  List<String> get languageList => _languageList;
  String _language = 'English';
  String get language => _language;
  set language(String language) {
    _language = language;
    if (language == 'English') {
      languageCode = 'en';
    } else if (language == 'हिन्दी') {
      languageCode = 'hi';
    }
  }

  String _languageCode = 'en';
  String get languageCode => _languageCode;

  set languageCode(String languageCode) {
    _languageCode = languageCode;
    Intl.defaultLocale = languageCode;
    savelanguage(languageCode: languageCode);
    notifyListeners();
  }

  boardingCompleated() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isBoardingCompleate', isBoardingCompleate);
    savelanguage(languageCode: _languageCode);
  }

  void savelanguage({required String languageCode}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('languageCode', languageCode);
  }

  getBoarding() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    _isBoardingCompleate =
        prefs.getBool('isBoardingCompleate') ?? _isBoardingCompleate;
  }

  getLanguage() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    _languageCode = prefs.getString('languageCode') ?? _languageCode;
    _language = _languageCode == 'en' ? 'English' : 'हिन्दी'; 
    Intl.defaultLocale = _languageCode;
  }

  void fatchLanguageData() async {
    await getBoarding();
    await getLanguage();
    notifyListeners();
  }
}
