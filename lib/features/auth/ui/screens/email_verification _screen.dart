import 'package:e_commerce_ostad_api/features/auth/ui/screens/otp_verification%20_screen.dart';
import 'package:e_commerce_ostad_api/features/auth/ui/widgets/app_logo_widget.dart';
import 'package:flutter/material.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  static const String routename = '/email_verification_screen';

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  final TextEditingController _emailTEController = TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

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
                    "Welcome Back",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Text(
                    "Please Enter Your Email Address",
                    style: Theme.of(context)
                        .textTheme
                        .bodyLarge
                        ?.copyWith(color: Colors.grey),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    controller: _emailTEController,
                    decoration: InputDecoration(
                      hintText: "Email Address",
                    ),
                    keyboardType: TextInputType.emailAddress,
                    validator: (String? value) {
                      if (value?.trim().isEmpty ?? true) {
                        return "Enter Your email-address";
                      }
                      final bool emailValid = RegExp(
                              r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                          .hasMatch(_emailTEController.value.text.trim());
                      if (!emailValid) {
                        return "Enter Your valid email-address";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // if (_formkey.currentState!.validate()) {}
                      Navigator.pushNamed(context, OtpVerificationScreen.routename,);
                    },
                    child: Text("Next"),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
