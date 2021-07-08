import 'package:flutter/material.dart';
import 'package:time_tracker_flutter_course/widgets/custom_raised_button.dart';

// constructor for the custom raised button

class SignInButton extends CustomRaisedButton {
  SignInButton({
    @required String text,
    Color color,
    Color textColor,
    VoidCallback onPressed,

}) : super(
    child: Text(text, style: TextStyle(color: textColor, fontSize: 15.0),
    ),
    color: color,
    onPressed: onPressed,
  );
}