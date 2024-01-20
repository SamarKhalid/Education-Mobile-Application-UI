import 'package:education_mobile_application/constants.dart';
import 'package:education_mobile_application/screens/auth_screens/sign_in.dart';
import 'package:education_mobile_application/screens/onboarding_screens/onboarding2.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoarding1 extends StatefulWidget {
  const OnBoarding1({Key? key}) : super(key: key);
  static const String id = 'onboarding1';

  @override
  State<OnBoarding1> createState() => _OnBoarding1State();
}

class _OnBoarding1State extends State<OnBoarding1> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Transform.rotate(
              angle: 2 * 3.14 / 2,
              child: ClipRect(
                child: Align(
                  alignment: Alignment.topCenter,
                  heightFactor: 0.57,
                  child: ClipOval(
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.white, AppColors.colorMain],
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                        ),
                      ),
                      width: screenWidth,
                      height: screenHeight * 0.96,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Transform.scale(
                          scale: 0.9, // Adjust the scale factor as needed
                          child: Transform.rotate(
                            angle: -2 * 3.14 / 2, // Counter-rotate the image
                            child: Image.asset(
                              'images/onboarding1_img.png', // Replace with your image path
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: screenHeight * 0.01),
            const Text('Welcome to USAM', style: mainText),
            SizedBox(height: screenHeight * 0.01),
            Center(
              child: Text(
                loremText,
                style: mainText.copyWith(
                    fontWeight: FontWeight.w300, fontSize: 20),
                textAlign: TextAlign
                    .center, // Align text horizontally in the center
              ),
            ),
            SizedBox(height: screenHeight * 0.03),
            ElevatedButton(
              style: filledButtonStyle,
              onPressed: () async {
                await _setShowOnboardingFlag(false);
                Navigator.pushNamed(context, OnBoarding2.id);
              },
              child: const Text('Next'),
            ),
            SizedBox(height: screenHeight * 0.02),
            ElevatedButton(
              style: outlinedButtonStyle,
              onPressed: () async {
                await _setShowOnboardingFlag(false);
                Navigator.pushNamed(context, SignIn.id);
              },
              child: Text('Skip', style: buttonTextStyle.copyWith(
                  color: const Color(0xFF1C6758))),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _setShowOnboardingFlag(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('showOnboarding', value);
  }
}
