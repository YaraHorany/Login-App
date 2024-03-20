import 'package:flutter/material.dart';
import 'signup_form_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(30),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: const SignUpFormWidget(),
                ),
                Column(
                  children: [
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
                    const SizedBox(height: 10),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        icon: const Image(
                          image: AssetImage("assets/logo/google-logo.png"),
                          width: 20.0,
                        ),
                        label: const Text("Sign-In with Google"),
                      ),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: () {},
                        icon: const Image(
                          image: AssetImage("assets/logo/facebook-logo.png"),
                          width: 20.0,
                        ),
                        label: const Text("Sign-In with Facebook"),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                                text: "Already have an account? ",
                                style: Theme.of(context).textTheme.bodyLarge),
                            const TextSpan(text: "Login"),
                          ],
                        ),
                      ),
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
