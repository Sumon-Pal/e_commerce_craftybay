import 'package:e_commerce_craftybay/features/products/presentation/screens/product_details_screen.dart';
import 'package:e_commerce_craftybay/features/shared/presentation/bottom_nav_holder_screen.dart';
import 'package:e_commerce_craftybay/features/wishlist/presentaion/screens/wish_list_screen.dart';
import 'package:flutter/material.dart';
import '../features/auth/presentation/screens/otp_verification_screen.dart';
import '../features/auth/presentation/screens/sign_in_screen.dart';
import '../features/auth/presentation/screens/sign_up_screen.dart';
import '../features/auth/presentation/screens/splash_screen.dart';
import '../features/products/presentation/screens/product_list_screen.dart';

MaterialPageRoute onGenerateRoute(RouteSettings setting){
  late Widget screen;

  if(setting.name == SplashScreen.name){
    screen = SplashScreen();
  }else if(setting.name == SignInScreen.name){
    screen = SignInScreen();
  }else if(setting.name == SignUpScreen.name){
    screen = SignUpScreen();
  }else if(setting.name == OtpVerificationScreen.name){
    screen = OtpVerificationScreen();
  }else if(setting.name == BottomNavHolderScreen.name){
    screen = BottomNavHolderScreen();
  }else if (setting.name == ProductListScreen.name) {
    final String category = setting.arguments as String;
    screen = ProductListScreen(category: category);
  }else if (setting.name == WishListScreen.name) {
    final String category = setting.arguments as String;
    screen = WishListScreen(category: category);
  }else if(setting.name == ProductDetailsScreen.name){
    screen = ProductDetailsScreen();
  }

  return MaterialPageRoute(builder: (ctx)=>screen);
}