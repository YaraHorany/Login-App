import 'package:flutter/material.dart';
import '../signup/signup_screen.dart';
import 'login_form_widget.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                const Text("Log In"),
                const LoginForm(),
                Row(
                  children: const [
                    Expanded(
                      child: Divider(
                        indent: 20.0,
                        endIndent: 10.0,
                        thickness: 2,
                      ),
                    ),
                    Text("or continue with"),
                    Expanded(
                      child: Divider(
                        indent: 20.0,
                        endIndent: 20.0,
                        thickness: 2,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RawMaterialButton(
                      onPressed: () {},
                      elevation: 2.0,
                      fillColor: Colors.white,
                      padding: const EdgeInsets.all(15.0),
                      shape: const CircleBorder(),
                      child: const Image(
                        height: 30,
                        width: 30,
                        image: AssetImage("assets/logo/google-logo.png"),
                      ),
                    ),
                    const SizedBox(width: 30),
                    RawMaterialButton(
                      onPressed: () {},
                      elevation: 2.0,
                      fillColor: Colors.white,
                      padding: const EdgeInsets.all(15.0),
                      shape: const CircleBorder(),
                      child: const Image(
                        height: 30,
                        width: 30,
                        image: AssetImage("assets/logo/facebook-logo.png"),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an Account?"),
                    TextButton(
                      onPressed: () {
                        Get.to(const SignUpScreen());
                      },
                      child: const Text("Sign up"),
                    ),
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
