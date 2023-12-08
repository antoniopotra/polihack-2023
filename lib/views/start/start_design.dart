// start_design.dart

import 'package:flutter/material.dart';

class AppDesign {
  static const TextStyle welcomeTextStyle = TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w500,
    fontSize: 36, // Increased font size for the welcome text
  );

  static const TextStyle buttonTextStyle = TextStyle(
    fontSize: 20, // Increased font size for the button text
  );

  static const Color primaryColor = Color(0xFFff426f); // #ff426f
  static const Color secondaryColor = Color(0xFFff8a78); // #ff8a78

  static const LinearGradient gradientBackground = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [primaryColor, secondaryColor],
  );

  static ButtonStyle loginButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: Colors.transparent,
    // Set background color to transparent
    foregroundColor: Colors.white,
    // Set text color to white
    side: const BorderSide(color: Colors.white),
    // Set white border
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0), // Increase the border radius
    ),
    textStyle: buttonTextStyle,
  );

  static ButtonStyle registerButtonStyle = ElevatedButton.styleFrom(
    backgroundColor: Colors.transparent,
    // Set background color to transparent
    foregroundColor: Colors.white,
    // Set text color to white
    side: const BorderSide(color: Colors.white),
    // Set white border
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20.0), // Increase the border radius
    ),
    textStyle: buttonTextStyle,
  );
}
