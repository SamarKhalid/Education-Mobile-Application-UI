import 'package:flutter/material.dart';

class AppColors{
  static const colorMain = Color(0xFF1C6758);
}

const mainText= TextStyle(
  fontSize: 25,
  fontWeight: FontWeight.w600,
  height: 1.5,
  color: Colors.black, // Color code for #3D8361
);
var filledButtonStyle = ButtonStyle(
  backgroundColor:
  MaterialStateProperty.all<Color>(const Color(0xFF1C6758)),
  minimumSize: MaterialStateProperty.all<Size>(const Size(320, 53)),
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
      side: const BorderSide(color: Color(0xFF1C6758)),
    ),
  ),
  textStyle: MaterialStateProperty.all<TextStyle>(
    buttonTextStyle,
  ),
);

var outlinedButtonStyle = ButtonStyle(
  backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFFFFFFFF)),
  minimumSize: MaterialStateProperty.all<Size>(const Size(320, 53)),
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
      side: const BorderSide(color: Color(0xFF1C6758)),
    ),
  ),
);

const buttonTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 20.0,
    fontWeight: FontWeight.normal);
const loremText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.";