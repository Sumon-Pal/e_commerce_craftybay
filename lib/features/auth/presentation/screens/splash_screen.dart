import 'package:e_commerce_craftybay/app/asset_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Spacer(),
              SvgPicture.asset(AssetPaths.logoSvg),
              Spacer(),
              CircularProgressIndicator(),
              const SizedBox(height: 8,),
              Text('Version 1.0.0')
            ],
          ),
        ),
      ),
    );
  }
}
