import 'package:flutter/material.dart';

class AppColors{
  static const colorMain = Color(0xFF1C6758);
}

const mainText= TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.w600,
  height: 1.5,
  color: Colors.black,
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
    Icons.person,
    color: Color(0xFFBDBDBD),
  ),
);

List<String> courseCategories = ["All", "Design", "Programming","UI/UX"];

List<Map<String, dynamic>> coursesData = [
  {
    'imagePath': 'images/camera_img.png',
    'courseName': 'Photoshop course',
    'rating': 5.0,
    'duration': '5h 15m',
    'courseCategory': 'Design',
  },
  {
    'imagePath': 'images/3D_img.png',
    'courseName': '3D Design',
    'rating': 4.5,
    'duration': '3h 15m',
    'courseCategory': 'Design',
  },
  {
    'imagePath': 'images/figma_img.png',
    'courseName': 'Figma',
    'rating': 3.5,
    'duration': '10h 15m',
    'courseCategory': 'UI/UX',
  },
  {
    'imagePath': 'images/flutter_img.png',
    'courseName': 'Flutter Course',
    'rating': 3.5,
    'duration': '10h 15m',
    'courseCategory': 'Programming',
  },
];

const loremText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt.";
const homePageText = "USAM is a platform that allows educators to create online classes whereby they can store the course materials online; manage assignments , quizzes and exams; monitor due dates; grade results and provide students with feedback all in one place";