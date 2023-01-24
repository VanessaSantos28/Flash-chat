import 'package:flutter/material.dart';
import 'package:chat_app/constants.dart';
import 'package:chat_app/screens/login_screen.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton(
      {required this.colour, required this.text, required this.onPressed});

  final String text;
  final VoidCallback onPressed;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colour,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 200.0,
          height: 42.0,
          child: Text(text, style: kTitleStyle),
        ),
      ),
    );
  }
}
