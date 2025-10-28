import 'package:e_commerce_craftybay/features/auth/presentation/widgets/app_logo.dart';
import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  static const String name = '/verify-otp';

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final TextEditingController _otpTEController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    final textTheme = Theme
        .of(context)
        .textTheme;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const SizedBox(height: 48),
                AppLogo(width: 90),
                const SizedBox(height: 24),
                Text('Enter OTP Code', style: textTheme.titleLarge),
                Text(
                  'A 6 digit OTP has been sent',
                  style: textTheme.bodyLarge,
                ),
                const SizedBox(height: 24),
                PinCodeTextField(
                  length: 6,
                  obscureText: false,
                  keyboardType: TextInputType.number,
                  pinTheme: PinTheme(
                    shape: PinCodeFieldShape.box
                  ),
                  animationType: AnimationType.fade,
                  animationDuration: Duration(milliseconds: 300),
                  appContext: context,
                  controller: _otpTEController,
                ),
                const SizedBox(height: 16),
                FilledButton(
                    onPressed: _onTapVerify, child: Text('Verify')),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onTapVerify() {}

  @override
  void dispose() {
    super.dispose();
    _otpTEController.dispose();
  }
}
