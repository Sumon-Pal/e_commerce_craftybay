import 'package:e_commerce_craftybay/features/category/presentation/screens/category_list_screen.dart';
import 'package:e_commerce_craftybay/features/home/presentation/screens/home_screen.dart';
import 'package:e_commerce_craftybay/features/wishlist/presentaion/screens/wish_list_screen.dart';
//import 'package:e_commerce_craftybay/features/shared/controllers/main_nav_holder_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/main_nav_holder_controller.dart';

class BottomNavHolderScreen extends StatefulWidget {
  const BottomNavHolderScreen({super.key});

  static String name = '/main-nav-holder';

  @override
  State<BottomNavHolderScreen> createState() => _BottomNavHolderScreenState();
}

class _BottomNavHolderScreenState extends State<BottomNavHolderScreen> {
  final List<Widget> _screens =[
    HomeScreen(),
    CategoryListScreen(),
    HomeScreen(),
    WishListScreen(category: 'WishList')
  ];
  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainNavHolderController>(
      builder: (controller) {
        return Scaffold(
          body: _screens[controller.currentIndex],
          bottomNavigationBar: NavigationBar(
            selectedIndex:controller.currentIndex ,
            onDestinationSelected: controller.changeIndex,
            destinations: [
              NavigationDestination(icon: Icon(Icons.home), label: 'home'),
              NavigationDestination(
                icon: Icon(Icons.dashboard_customize_outlined),
                label: 'Categories',
              ),
              NavigationDestination(
                icon: Icon(Icons.shopping_cart_checkout),
                label: 'Cart',
              ),
              NavigationDestination(
                icon: Icon(Icons.favorite),
                label: 'WishList',
              ),
            ],
          ),
        );
      },
    );
  }
}
