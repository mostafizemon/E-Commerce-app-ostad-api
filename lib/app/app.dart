import 'package:e_commerce_ostad_api/app/app_theme_data.dart';
import 'package:e_commerce_ostad_api/app/controller_binder.dart';
import 'package:e_commerce_ostad_api/features/auth/ui/screens/complete_profile_screen.dart';
import 'package:e_commerce_ostad_api/features/auth/ui/screens/email_verification%20_screen.dart';
import 'package:e_commerce_ostad_api/features/auth/ui/screens/otp_verification%20_screen.dart';
import 'package:e_commerce_ostad_api/features/category/ui/screens/category_list_screen.dart';
import 'package:e_commerce_ostad_api/features/common/ui/screens/main_bottom_nav_screen.dart';
import 'package:e_commerce_ostad_api/features/product/ui/screens/product_details_screen.dart';
import 'package:e_commerce_ostad_api/features/product/ui/screens/product_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../features/auth/ui/screens/splash_screen.dart';

class CraftBay extends StatelessWidget {
  const CraftBay({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: AppThemeData.lightThemeData,
      darkTheme: AppThemeData.darkThemeData,
      debugShowCheckedModeBanner: false,
      initialBinding: ControllerBinder(),
      initialRoute: '/',
      onGenerateRoute: (RouteSettings setting) {
        late Widget widget;
        if (setting.name == SplashScreen.routname) {
          widget = const SplashScreen();
        } else if (setting.name == EmailVerificationScreen.routename) {
          widget = EmailVerificationScreen();
        } else if (setting.name == OtpVerificationScreen.routename) {
          widget = OtpVerificationScreen();
        } else if (setting.name == CompleteProfileScreen.routename) {
          widget = CompleteProfileScreen();
        } else if (setting.name == MainBottomNavScreen.routename) {
          widget = MainBottomNavScreen();
        } else if (setting.name == CategoryListScreen.routename) {
          widget = CategoryListScreen();
        } else if (setting.name == ProductListScreen.routename) {
          String name = setting.arguments as String;
          widget = ProductListScreen(
            categoryName: name,
          );
        } else if (setting.name == ProductDetailsScreen.routename) {
          int id = setting.arguments as int;
          widget = ProductDetailsScreen(
            productID: id,
          );
        }

        return MaterialPageRoute(
          builder: (context) {
            return widget;
          },
        );
      },
    );
  }
}
