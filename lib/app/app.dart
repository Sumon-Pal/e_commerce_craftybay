import 'package:e_commerce_craftybay/app/app_colors.dart';
import 'package:e_commerce_craftybay/app/app_theme.dart';
import 'package:e_commerce_craftybay/app/controllers/language_controller.dart';
import 'package:e_commerce_craftybay/features/auth/presentation/screens/splash_screen.dart';
import 'package:e_commerce_craftybay/l10n/app_localizations.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

import '../features/auth/presentation/screens/ln_change_switch.dart';

class CraftyBay extends StatefulWidget {
  const CraftyBay({super.key});
  static final LanguageController languageController = LanguageController();

  static FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  static FirebaseAnalyticsObserver observer = FirebaseAnalyticsObserver(
    analytics: analytics,
  );

  @override
  State<CraftyBay> createState() => _CraftyBayState();
}

class _CraftyBayState extends State<CraftyBay> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: CraftyBay.languageController,
      builder: (languageController) {
        return MaterialApp(
          navigatorObservers: [CraftyBay.observer],
          localizationsDelegates: [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales:languageController.supportedLocale,
          locale:languageController.currentLocale,
          theme: AppTheme.lightThemeData,
          darkTheme:AppTheme.darkThemeData,
          themeMode: ThemeMode.light,
          home: SplashScreen(),
        );
      },
    );
  }
}
