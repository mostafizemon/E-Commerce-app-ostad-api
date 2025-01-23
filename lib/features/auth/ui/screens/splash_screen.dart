import 'package:e_commerce_ostad_api/features/auth/ui/screens/email_verification%20_screen.dart';
import 'package:e_commerce_ostad_api/features/common/ui/screens/main_bottom_nav_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/app_logo_widget.dart';

class SplashScreen extends StatefulWidget {
  static const String routname="/";
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _moveToNextScreen();
  }

  Future<void> _moveToNextScreen() async {
    await Future.delayed(
      Duration(seconds: 2),
    );
    Navigator.pushReplacementNamed(context, MainBottomNavScreen.routename);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              AppLogoWidget(),
              Spacer(),
              CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}
