import 'package:e_commerce_craftybay/features/presentation/screens/splash_screen.dart';
import 'package:e_commerce_craftybay/l10n/app_localizations.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class CraftyBay extends StatefulWidget {
  const CraftyBay({super.key});

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
    return MaterialApp(
      navigatorObservers: [CraftyBay.observer],
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [
        Locale('en'), // English
        Locale('bn'), // Bengali
      ],
      locale: Locale('en'),
      home: SplashScreen(),
    );
  }
}
