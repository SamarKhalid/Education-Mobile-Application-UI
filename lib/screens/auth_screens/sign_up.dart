import 'package:education_mobile_application/constants.dart';
import 'package:education_mobile_application/screens/auth_screens/sign_in.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);
  static const String id = 'sign_up';

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String email = '';
  String name = '';

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                SizedBox(height: screenHeight * 0.05),
                Text('Create An Account',
                    style: mainText.copyWith(color: const Color(0xFF1C6758))),
                SizedBox(height: screenHeight * 0.03),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Name',
                        style: mainText.copyWith(
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF1C6758))),
                  ],
                ),
                TextField(
                  onChanged: (value) {
                    name = value;
                  },
                  decoration: textFieldDecoration.copyWith(
                    hintText: 'Your Name',
                  ),
                ),
                SizedBox(height: screenHeight * 0.04),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Email Address',
                        style: mainText.copyWith(
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF1C6758))),
                  ],
                ),
                TextField(
                  onChanged: (value) {
                    email = value;
                  },
                  decoration: textFieldDecoration.copyWith(
                    hintText: 'example@domain.com',
                    prefixIcon: const Icon(Icons.email_outlined),
                  ),
                ),
                SizedBox(height: screenHeight * 0.04),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Password',
                        style: mainText.copyWith(
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF1C6758))),
                  ],
                ),
                TextField(
                  obscureText: true,
                  decoration: textFieldDecoration.copyWith(
                    hintText: 'Your password',
                    prefixIcon: const Icon(Icons.password),
                  ),
                ),
                SizedBox(height: screenHeight * 0.04),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Confirm Password',
                        style: mainText.copyWith(
                            fontWeight: FontWeight.w400,
                            color: const Color(0xFF1C6758))),
                  ],
                ),
                TextField(
                  obscureText: true,
                  decoration: textFieldDecoration.copyWith(
                    hintText: 'Re-type the password',
                    prefixIcon: const Icon(Icons.password),
                  ),
                ),
                SizedBox(height: screenHeight * 0.05),
                ElevatedButton(
                  style: filledButtonStyle.copyWith(minimumSize: MaterialStateProperty.all<Size>(const Size(385, 60)),),
                  onPressed: ()  {
                    //Navigator.pushNamed(context, OnBoarding2.id);
                  },
                  child: const Text('Sign Up'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already have an account?'),
                    TextButton(
                        onPressed: () { Navigator.pushNamed(context, SignIn.id); }, child: const Text('Sign In')),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
