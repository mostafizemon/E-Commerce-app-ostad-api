import 'package:e_commerce_ostad_api/features/category/ui/screens/category_list_screen.dart';
import 'package:e_commerce_ostad_api/features/common/ui/controllers/main_bottom_nav_controller.dart';
import 'package:e_commerce_ostad_api/features/home/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  static const String routename = '/main_bottom_nav_screen';

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {


  final List<Widget> _screens=[
    HomeScreen(),
    CategoryListScreen(),
    HomeScreen(),
    HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainBottomNavController>(
      builder: (bottomController) {
        return Scaffold(
          body: _screens[bottomController.selectedIndex],
          bottomNavigationBar: NavigationBar(
            selectedIndex: bottomController.selectedIndex,
            onDestinationSelected: bottomController.changeIndex,
            destinations: [
              NavigationDestination(icon: Icon(Icons.home_filled), label: "Home"),
              NavigationDestination(
                  icon: Icon(Icons.category), label: "Categories"),
              NavigationDestination(icon: Icon(Icons.shopping_cart), label: "Cart"),
              NavigationDestination(icon: Icon(Icons.favorite), label: "Wishlist"),
            ],
          ),
        );
      }
    );
  }
}
