import 'package:education_mobile_application/constants.dart';
import 'package:education_mobile_application/screens/auth_screens/sign_in.dart';
import 'package:flutter/material.dart';

class OnBoarding2 extends StatefulWidget {
  const OnBoarding2({Key? key}) : super(key: key);
  static const String id = 'onboarding2';


  @override
  State<OnBoarding2> createState() => _OnBoarding2State();
}

class _OnBoarding2State extends State<OnBoarding2> {
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
                      height: screenHeight *0.96 ,
                      child: Align(
                        alignment: Alignment.topCenter,
                        child: Transform.scale(
                          scale: 0.8, // Adjust the scale factor as needed
                          child: Transform.rotate(
                            angle: -2 * 3.14 / 2,
                            child: Image.asset(
                              'images/onboarding2_img.png',
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
            const Text('Get Certified',style: mainText),
            SizedBox(height: screenHeight * 0.01),
            Center(
              child: Text(
                loremText,
                style: mainText.copyWith(fontWeight: FontWeight.w300, fontSize: 20),
                textAlign: TextAlign.center, // Align text horizontally in the center
              ),
            ),
            SizedBox(height: screenHeight * 0.07),
            ElevatedButton(
              style: filledButtonStyle,
              onPressed: () { Navigator.pushNamed(context, SignIn.id); },
              child: const Text('Lets make a journey'),
            ),
          ],
        ),
      ),
    );
  }
}
