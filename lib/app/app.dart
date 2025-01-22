import 'package:e_commerce_ostad_api/app/app_theme_data.dart';
import 'package:e_commerce_ostad_api/app/controller_binder.dart';
import 'package:e_commerce_ostad_api/features/auth/ui/screens/complete_profile_screen.dart';
import 'package:e_commerce_ostad_api/features/auth/ui/screens/email_verification%20_screen.dart';
import 'package:e_commerce_ostad_api/features/auth/ui/screens/otp_verification%20_screen.dart';
import 'package:e_commerce_ostad_api/features/common/ui/screens/main_bottom_nav_screen.dart';
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
      routes: {
        '/': (context) => SplashScreen(),
        EmailVerificationScreen.routename: (context) =>
            EmailVerificationScreen(),
        OtpVerificationScreen.routename: (context) => OtpVerificationScreen(),
        CompleteProfileScreen.routename: (context) => CompleteProfileScreen(),
        MainBottomNavScreen.routename:(context)=>MainBottomNavScreen()
      },
    );
  }
}
