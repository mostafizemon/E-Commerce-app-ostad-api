import 'package:e_commerce_ostad_api/app/assets_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

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
              SvgPicture.asset(
                AssetsPath.appLogoSvg,
                width: 90,
              ),
              Spacer(),
              CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}
