import 'package:flutter/material.dart';

class AppColors{
  static const colorMain = Color(0xFF1C6758);
}

const mainText= TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.w600,
  height: 1.5,
  color: Colors.black, // Color code for #3D8361
);
var filledButtonStyle = ButtonStyle(
  backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFF1C6758)),
  minimumSize: MaterialStateProperty.all<Size>(const Size(345, 46)),
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
      side: const BorderSide(color: Color(0xFF1C6758)),
    ),
  ),
  textStyle: MaterialStateProperty.all<TextStyle>(
    buttonTextStyle,
  ),
);

var outlinedButtonStyle = ButtonStyle(
  backgroundColor: MaterialStateProperty.all<Color>(const Color(0xFFFFFFFF)),
  minimumSize: MaterialStateProperty.all<Size>(const Size(345, 46)),
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12.0),
      side: const BorderSide(color: Color(0xFF1C6758)),
    ),
  ),
);

const buttonTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 18.0,
    fontWeight: FontWeight.normal);

const textFieldDecoration = InputDecoration(
  hintText: 'Enter a value',
  hintStyle: TextStyle(
    color: Color(0xffD7D8DB),
  ),
  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFF1C6758), width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(12.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Color(0xFF1C6758), width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(12.0)),
  ),
  prefixIcon: Icon(
    Icons.person, // Change to the desired icon
    color: Color(0xFFBDBDBD), // Change to the desired color
  ),
);

List<String> courseCategories = ["All", "Design", "Programming","UI/UX"];

const loremText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.";
const homePageText = "USAM is a platform that allows educators to create online classes whereby they can store the course materials online; manage assignments , quizzes and exams; monitor due dates; grade results and provide students with feedback all in one place";