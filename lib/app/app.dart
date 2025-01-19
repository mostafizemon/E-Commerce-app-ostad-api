import 'package:e_commerce_ostad_api/app/app_theme_data.dart';
import 'package:flutter/material.dart';

import '../features/auth/ui/screens/splash_screen.dart';

class CraftBay extends StatelessWidget {
  const CraftBay({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemeData.lightThemeData,
      darkTheme: AppThemeData.darkThemeData,

      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/' :(context)=> SplashScreen(),
      },
    );
  }
}
