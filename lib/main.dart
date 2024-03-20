import 'package:flutter/material.dart';
import 'package:login_app/src/features/authentication/screens/login/login_screen.dart';
import 'package:login_app/src/features/authentication/screens/signup/signup_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      title: 'Login App',
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.leftToRightWithFade,
      transitionDuration: Duration(milliseconds: 500),
      home: LoginScreen(),
    );
  }
}
