import 'package:e_commerce_ostad_api/features/auth/ui/screens/otp_verification%20_screen.dart';
import 'package:e_commerce_ostad_api/features/auth/ui/widgets/app_logo_widget.dart';
import 'package:flutter/material.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});

  static const String routename = '/complete_profile_screen';

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  final TextEditingController _firstNameTEController = TextEditingController();
  final TextEditingController _lastNameTEController = TextEditingController();
  final TextEditingController _mobileTEController = TextEditingController();
  final TextEditingController _cityTEController = TextEditingController();
  final TextEditingController _shippingAddressTEController =
      TextEditingController();
  final GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 70,
                ),
                AppLogoWidget(
                  width: 100,
                  height: 100,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Complete Profile",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Text(
                  "Get started with us with your details",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge
                      ?.copyWith(color: Colors.grey),
                ),
                SizedBox(
                  height: 20,
                ),
                buildForm(),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                  onPressed: () {
                    // if (_formkey.currentState!.validate()) {}
                  },
                  child: Text("Complete"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildForm() {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (String? value) {
              if (value?.trim().isEmpty ?? true) {
                return "First Name is Required";
              }
              return null;
            },
            controller: _firstNameTEController,
            decoration: InputDecoration(
              hintText: "Enter Your First Name",
            ),
          ),
          SizedBox(
            height: 16,
          ),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (String? value) {
              if (value?.trim().isEmpty ?? true) {
                return "Enter Your Last Name";
              }
              return null;
            },
            controller: _lastNameTEController,
            decoration: InputDecoration(
              hintText: "Last Name",
            ),
          ),
          SizedBox(
            height: 16,
          ),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (String? value) {
              final _isValid = RegExp(r'^(?:\+88|88)?(01[3-9]\d{8})$').hasMatch(
                _mobileTEController.text,
              );
              if (value?.trim().isEmpty ?? true) {
                return "Enter Your Valid Mobile NUmber";
              }
              if (!_isValid) {
                return "Please Enter Your Valid Phone Number";
              }
              return null;
            },
            keyboardType: TextInputType.phone,
            controller: _mobileTEController,
            decoration: InputDecoration(
              hintText: "Mobile",
            ),
          ),
          SizedBox(
            height: 16,
          ),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (String? value) {
              if (value?.trim().isEmpty ?? true) {
                return "Enter Your City";
              }
              return null;
            },
            controller: _cityTEController,
            decoration: InputDecoration(
              hintText: "City",
            ),
          ),
          SizedBox(
            height: 16,
          ),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (String? value) {
              if (value?.trim().isEmpty ?? true) {
                return "Enter Your Shipping Address";
              }
              return null;
            },
            controller: _shippingAddressTEController,
            decoration: InputDecoration(
              hintText: "Shipping Address",
            ),
            maxLines: 3,
          ),
          SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _firstNameTEController.dispose();
    _lastNameTEController.dispose();
    _mobileTEController.dispose();
    _cityTEController.dispose();
    _shippingAddressTEController.dispose();
    super.dispose();
  }
}
