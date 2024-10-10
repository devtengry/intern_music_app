import 'package:flutter/material.dart';

class WelcomeFloatingButton {
  static SizedBox welcomeFloatingButton(VoidCallback onPressed) {
    return SizedBox(
      width: 70,
      height: 70,
      child: FloatingActionButton(
        onPressed: onPressed,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22),
        ),
        backgroundColor: Colors.white,
        child: const Icon(
          Icons.arrow_forward,
          size: 33,
          color: Color.fromARGB(255, 75, 52, 179),
        ),
      ),
    );
  }
}
