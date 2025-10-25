import 'dart:ui';
import 'package:get/get.dart';

class LanguageController extends GetxController {
  Locale _currentLocale = Locale('en');
  final List<Locale> _supportedLocale = [Locale('en'),Locale('bn')];
  Locale get currentLocale => _currentLocale;
  List<Locale> get supportedLocale => _supportedLocale;

  void changeLocale(Locale locale){
    if(_currentLocale == locale){
      return;
    }
    _currentLocale = locale;
    update();
  }
}