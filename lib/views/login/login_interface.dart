import 'dart:developer';

import 'package:flutter/material.dart';
import 'login_design.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool showPassword = false;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double containerWidth = screenWidth * 0.85;
    double buttonWidth = screenWidth * 0.4;
    double screenHeight = MediaQuery.of(context).size.height;
    double containerHeight = screenHeight * 0.6;

    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LoginDesign.gradientBackground,
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
                Container(
                  padding: const EdgeInsets.only(top: 80),
                  width: buttonWidth,
                  child: ElevatedButton(
                    onPressed: handleAuthentication,
                    style: LoginDesign.loginButtonStyle(buttonWidth),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 10),
                        Text('Submit', style: LoginDesign.buttonTextStyle),
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
        style: LoginDesign.inputTextStyle,
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
          labelStyle: LoginDesign.inputTextStyle.copyWith(color: Colors.white),
        ),
      ),
    );
  }

  void togglePasswordVisibility() {
    setState(() {
      showPassword = !showPassword;
    });
  }

  void handleAuthentication() {
    // TODO: Add logic for authentication
    // Log user input
    log('Name: ${nameController.text}');
    log('Email: ${emailController.text}');
    log('Password: ${passwordController.text}');
  }
}
