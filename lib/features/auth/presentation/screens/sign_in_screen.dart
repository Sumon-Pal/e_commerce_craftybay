import 'package:e_commerce_craftybay/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:e_commerce_craftybay/features/auth/presentation/widgets/app_logo.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  static const String name = '/sign-in';

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController _emailTEController = TextEditingController();
  final TextEditingController _passwordTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
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
                Text('Welcome Back', style: textTheme.titleLarge),
                Text(
                  'Please Enter your Email Address and Password',
                  style: textTheme.bodyLarge,
                ),
                const SizedBox(height: 24),
                TextFormField(
                  controller: _emailTEController,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  decoration: InputDecoration(hintText: 'Email'),
                ),
                const SizedBox(height: 8),
                TextFormField(
                  controller: _passwordTEController,
                  textInputAction: TextInputAction.done,
                  decoration: InputDecoration(hintText: 'Password'),
                ),
                const SizedBox(height: 16),
                FilledButton(onPressed: _onTapSignIn, child: Text('Sign In')),
                const SizedBox(height: 16),
                TextButton(onPressed: _onTapSignUp, child: Text('Sign Up')),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onTapSignIn() {}

  void _onTapSignUp() {
    Navigator.pushNamed(context, SignUpScreen.name);
  }

  @override
  void dispose() {
    super.dispose();
    _emailTEController.dispose();
    _passwordTEController.dispose();
  }
}
