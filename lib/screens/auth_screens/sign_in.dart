import 'package:education_mobile_application/constants.dart';
import 'package:education_mobile_application/screens/auth_screens/sign_up.dart';
import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);
  static const String id = 'sign_in';

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  String email = '';

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Text('Welcome back , Login now',
                    style: mainText.copyWith(color: const Color(0xFF1C6758))),
                SizedBox(height: screenHeight * 0.02),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  // Adjust the radius as needed
                  child: Image.asset(
                    'images/login_img.jpg',
                    width: screenWidth * 0.65,
                  ),
                ),
                SizedBox(height: screenHeight * 0.03),
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
                SizedBox(height: screenHeight * 0.05),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                         onPressed: () {  }, child: const Text('Forget password?')),
                  ],
                ),
                SizedBox(height: screenHeight * 0.03),
                ElevatedButton(
                  style: filledButtonStyle.copyWith(minimumSize: MaterialStateProperty.all<Size>(const Size(385, 60)),),
                  onPressed: ()  {
                   // Navigator.pushNamed(context, SignUp.id);
                  },
                  child: const Text('Login'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Dont have an account?'),
                    TextButton(
                        onPressed: () {  Navigator.pushNamed(context, SignUp.id);}, child: const Text('Sign Up')),
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
