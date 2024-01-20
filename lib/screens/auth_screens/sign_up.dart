import 'package:education_mobile_application/constants.dart';
import 'package:education_mobile_application/screens/auth_screens/sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);
  static const String id = 'sign_up';

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  String name = '';
  String confirmPassword = '';

  @override
  void initState() {
    super.initState();
  }

  Future<void> registerUser() async {
    if (passwordController.text != confirmPassword) {
      setState(() {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Password not match.'),
            duration: Duration(seconds: 7),
          ),
        );
      });
      return;
    }

    try {
      UserCredential? userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        setState(() {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('This email is already in use.'),
              duration: Duration(seconds: 7),
            ),
          );
        });
      } else if (e.code == 'weak-password') {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Password should be at least 6 characters.'),
            duration: Duration(seconds: 7),
          ),
        );
      } else {
        // Handle other FirebaseAuthException errors
        print('FirebaseAuthException: ${e.code}');
      }
    } catch (e) {
      print('Error: $e');
    }
  }

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
                  controller: emailController,
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
                  controller: passwordController,
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
                  onChanged: (value) {
                    confirmPassword = value;
                  },
                  obscureText: true,
                  decoration: textFieldDecoration.copyWith(
                    hintText: 'Re-type the password',
                    prefixIcon: const Icon(Icons.password),
                  ),
                ),
                SizedBox(height: screenHeight * 0.05),
                ElevatedButton(
                  style: filledButtonStyle.copyWith(
                    minimumSize:
                        MaterialStateProperty.all<Size>(const Size(385, 60)),
                  ),
                  onPressed: () async {
                    await registerUser();
                    //Navigator.pushNamed(context, OnBoarding2.id);
                  },
                  child: const Text('Sign Up'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Already have an account?'),
                    TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, SignIn.id);
                        },
                        child: const Text('Sign In')),
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
