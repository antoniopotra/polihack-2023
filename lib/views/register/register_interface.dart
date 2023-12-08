import 'dart:developer';

import 'package:flutter/material.dart';
import 'register_design.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double containerWidth = screenWidth * 0.85;
    double buttonWidth = screenWidth * 0.4;
    double screenHeight = MediaQuery.of(context).size.height;
    double containerHeight = screenHeight * 0.7;

    return Scaffold(
      appBar: AppBar(title: const Text('Register')),
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: RegisterDesign.gradientBackground,
        ),
        child: Center(
          child: Container(
            width: containerWidth,
            height: containerHeight,
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.2),
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                buildTextFormField('Name', Icons.person, nameController),
                const SizedBox(height: 16.0),
                buildTextFormField('Email', Icons.email, emailController),
                const SizedBox(height: 16.0),
                buildTextFormField('Password', Icons.lock, passwordController,
                    isPassword: true),
                const SizedBox(height: 16.0),
                buildTextFormField(
                    'Confirm Password', Icons.lock, confirmPasswordController,
                    isPassword: true),
                const SizedBox(height: 16.0),
                Container(
                  padding: const EdgeInsets.only(top: 80),
                  width: buttonWidth,
                  child: ElevatedButton(
                    onPressed: handleRegistration,
                    style: RegisterDesign.registerButtonStyle(buttonWidth),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 10),
                        Text('Register', style: RegisterDesign.buttonTextStyle),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTextFormField(
      String labelText, IconData icon, TextEditingController controller,
      {bool isPassword = false}) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(
          color: Colors.white,
        ),
      ),
      child: TextFormField(
        controller: controller,
        obscureText: isPassword && !showPassword,
        style: RegisterDesign.inputTextStyle,
        decoration: InputDecoration(
          labelText: labelText,
          prefixIcon: Icon(icon, color: Colors.white),
          border: InputBorder.none,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
          suffixIcon: isPassword
              ? IconButton(
                  icon: Icon(
                      showPassword ? Icons.visibility_off : Icons.visibility,
                      color: Colors.white),
                  onPressed: togglePasswordVisibility,
                )
              : null,
          labelStyle:
              RegisterDesign.inputTextStyle.copyWith(color: Colors.white),
        ),
      ),
    );
  }

  void togglePasswordVisibility() {
    setState(() {
      showPassword = !showPassword;
    });
  }

  void handleRegistration() {
    // TODO: Add logic for registration
    // Log user input
    log('Name: ${nameController.text}');
    log('Email: ${emailController.text}');
    log('Password: ${passwordController.text}');
    log('Confirm Password: ${confirmPasswordController.text}');
  }
}
