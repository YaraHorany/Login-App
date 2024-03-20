import 'package:flutter/material.dart';
import '../forget_password/forget_password_options/forget_password_model_bottom_sheet.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.person_outline_outlined),
              labelText: "Email Address",
              hintText: "Email Address",
              border: OutlineInputBorder(),
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            decoration: const InputDecoration(
              labelText: "Password",
              hintText: "Password",
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.fingerprint),
              suffixIcon: IconButton(
                onPressed: null,
                icon: Icon(Icons.remove_red_eye_sharp),
              ),
            ),
          ),
          const SizedBox(height: 10),

          // Forget password button
          TextButton(
            onPressed: () {
              ForgetPasswordScreen.buildShowModalBottomSheet(context);
            },
            child: const Align(
                alignment: Alignment.centerRight,
                child: Text("Forget Password?")),
          ),

          // Login button
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {},
              child: const Text("Log In"),
            ),
          ),
        ],
      ),
    ));
  }
}
