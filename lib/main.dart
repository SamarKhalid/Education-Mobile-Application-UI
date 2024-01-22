import 'package:education_mobile_application/firebase_options.dart';
import 'package:education_mobile_application/screens/auth_screens/sign_up.dart';
import 'package:education_mobile_application/screens/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'screens/auth_screens/sign_in.dart';
import 'screens/onboarding_screens/onboarding1.dart';
import 'screens/onboarding_screens/onboarding2.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _initializePreferences();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,);
  runApp(const MyApp());
}

Future<void> _initializePreferences() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();

  bool isFirstLaunch = prefs.getBool('firstLaunch') ?? true;

  if (isFirstLaunch) {
    await prefs.setBool('showOnboarding', true);
    await prefs.setBool('firstLaunch', false);
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  Future<bool> _getShowOnboardingFlag() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool('showOnboarding') ?? true;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: _getShowOnboardingFlag(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          bool showOnboarding = snapshot.data ?? true;

          return MaterialApp(
            initialRoute: showOnboarding ? OnBoarding1.id : SignIn.id,
            routes: {
              OnBoarding1.id: (context) => const OnBoarding1(),
              OnBoarding2.id: (context) => const OnBoarding2(),
              SignIn.id: (context) => const SignIn(),
              SignUp.id: (context) => const SignUp(),
              HomePage.id: (context) => const HomePage(),
            },
          );
        } else {
          return const CircularProgressIndicator();
        }
      },
    );
  }
}
