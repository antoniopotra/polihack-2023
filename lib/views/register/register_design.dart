import 'package:flutter/material.dart';

class RegisterDesign {
  static const Color primaryColor = Color(0xFFff426f); // #ff426f
  static const Color secondaryColor = Color(0xFFff8a78); // #ff8a78

  static const TextStyle inputTextStyle = TextStyle(
    fontSize: 18, // Set font size for input fields (adjusted)
    color: Colors.white,
  );

  static const LinearGradient gradientBackground = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [primaryColor, secondaryColor],
  );

  static const TextStyle buttonTextStyle = TextStyle(
    fontSize: 20, // Increased font size for the button text
    fontWeight: FontWeight.bold, // Make the text bold
  );

  static ButtonStyle registerButtonStyle(double buttonWidth) =>
      ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        // Set the background color
        foregroundColor: primaryColor,
        // Set the text color
        side: const BorderSide(color: Colors.white),
        // Set white border
        shape: RoundedRectangleBorder(
          borderRadius:
              BorderRadius.circular(20.0), // Increase the border radius
        ),
        textStyle: buttonTextStyle,
        maximumSize:
            Size(buttonWidth, 60), // Set the specified width for the button
      );
}
