import 'package:e_commerce_craftybay/app/extensions/localization_extension.dart';
import 'package:flutter/material.dart';
import '../widgets/language_change_switch.dart';

class LnChangeSwitch extends StatefulWidget {
  const LnChangeSwitch({super.key});

  @override
  State<LnChangeSwitch> createState() => _LnChangeSwitchState();
}

class _LnChangeSwitchState extends State<LnChangeSwitch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(context.localization.hello),
            LanguageChangeSwitch(),
          ],
        ),
      ),
    );
  }
}
