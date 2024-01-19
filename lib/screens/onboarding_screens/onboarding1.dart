import 'package:education_mobile_application/constants.dart';
import 'package:flutter/material.dart';

class OnBoarding1 extends StatefulWidget {
  const OnBoarding1({Key? key}) : super(key: key);

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
                      width: screenWidth * 1.2,
                      height: screenHeight * 0.9,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Transform.scale(
                          scale: 0.57, // Adjust the scale factor as needed
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
            SizedBox(height: screenHeight * 0.02),
            Text('Welcome to USAM',style: mainText),
            SizedBox(height: screenHeight * 0.01),
            Center(
              child: Text(
                loremText,
                style: mainText.copyWith(fontWeight: FontWeight.w300, fontSize: 20),
                textAlign: TextAlign.center, // Align text horizontally in the center
              ),
            ),
            SizedBox(height: screenHeight * 0.045),
            ElevatedButton(
              style: filledButtonStyle,
              onPressed: () {  },
              child: const Text('Next'),
            ),
            SizedBox(height: screenHeight * 0.02),
            ElevatedButton(
              style: outlinedButtonStyle,
              onPressed: () {  },
              child:  Text('Skip', style: buttonTextStyle.copyWith(color: Color(0xFF1C6758))),
            ),
          ],
        ),
      ),
    );
  }
}
