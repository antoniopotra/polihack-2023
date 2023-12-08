import 'package:flutter/material.dart';
import 'start_design.dart'; // Import the design configuration
import '../register/register_interface.dart'; // Import the registration page
import '../login/login_interface.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Nice name here';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

// main.dart

// ... Existing imports

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double buttonWidth = screenWidth * 0.85;

    double screenHeight = MediaQuery.of(context).size.height;
    double buttonHeight = screenHeight * 0.06;

    return Container(
      decoration: const BoxDecoration(
        gradient: AppDesign.gradientBackground,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 50, bottom: 20),
            child: Container(
              alignment: Alignment.topCenter,
              margin: const EdgeInsets.only(bottom: 160, top: 40),
              child: const Text(
                'Welcome',
                style: AppDesign.welcomeTextStyle,
              ),
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // ... Existing code for the login form

                // Styled Login Button
                Container(
                  height: buttonHeight,
                  width: buttonWidth,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: ElevatedButton(
                    style: AppDesign.loginButtonStyle,
                    onPressed: () {
                      // Navigate to the registration page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoginPage(),
                        ),
                      );
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.person, color: Colors.white),
                        SizedBox(width: 10),
                        // Adjust the spacing between icon and text
                        Text('Login'),
                      ],
                    ),
                  ),
                ),

                // Styled Register Button
                Container(
                  height: buttonHeight,
                  width: buttonWidth,
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  child: ElevatedButton(
                    style: AppDesign.registerButtonStyle,
                    onPressed: () {
                      // Navigate to the registration page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const RegisterPage(),
                        ),
                      );
                    },
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.list_alt, color: Colors.white),
                        SizedBox(width: 10),
                        // Adjust the spacing between icon and text
                        Text('Register'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
