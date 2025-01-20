import 'dart:async';

import 'package:e_commerce_ostad_api/app/ap_constants.dart';
import 'package:e_commerce_ostad_api/features/auth/ui/widgets/app_logo_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../../../../app/app_colors.dart';
import 'complete_profile_screen.dart';

class OtpVerificationScreen extends StatefulWidget {
  const OtpVerificationScreen({super.key});

  static const String routename = '/otp_verification_screen';

  @override
  State<OtpVerificationScreen> createState() => _OtpVerificationScreenState();
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
  final TextEditingController _otpTEController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  final RxInt _remainingTime = AppConstants.resendOtpTimePeriod.obs;
  final RxBool _enableResentOtpButton = false.obs;

  @override
  void initState() {
    super.initState();
    timer = Timer(const Duration(seconds: 0), () {});
    _startResentCodeTime();
  }

  late Timer timer;

  void _startResentCodeTime() {
    _enableResentOtpButton.value = false;
    if (timer.isActive) {
      timer.cancel();
    }
    _remainingTime.value = AppConstants.resendOtpTimePeriod;
    timer = Timer.periodic(
      Duration(seconds: 1),
      (t) {
        _remainingTime.value--;
        if (_remainingTime.value == 0) {
          t.cancel();
          _enableResentOtpButton.value = true;
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Form(
              key: _formkey,
              child: Column(
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  AppLogoWidget(),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Enter OTP Code",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    "A 4 digit otp has been sent to your email",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  PinCodeTextField(
                    controller: _otpTEController,
                    keyboardType: TextInputType.number,
                    length: 6,
                    obscureText: false,
                    animationType: AnimationType.fade,
                    animationDuration: Duration(milliseconds: 300),
                    // Pass it here
                    appContext: context,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      activeColor: AppColors.themeColor,
                      inactiveColor: AppColors.themeColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // if (_formkey.currentState!.validate()) {}
                      Navigator.pushNamed(context, CompleteProfileScreen.routename);
                    },
                    child: Text("Next"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Obx(
                    () => Visibility(
                      visible: !_enableResentOtpButton.value,
                      child: RichText(
                        text: TextSpan(
                          text: "This code will be expire in ",
                          style: TextStyle(color: Colors.grey),
                          children: [
                            TextSpan(
                                text: "${_remainingTime.value}s",
                                style: TextStyle(color: AppColors.themeColor))
                          ],
                        ),
                      ),
                    ),
                  ),
                  Obx(
                    () => Visibility(
                      visible: _enableResentOtpButton.value,
                      child: TextButton(
                        onPressed: () {
                          _startResentCodeTime();
                        },
                        child: Text('Recent Code'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    if (timer.isActive) {
      timer.cancel();
    }
    super.dispose();
  }
}
