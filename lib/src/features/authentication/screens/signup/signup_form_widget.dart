import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/signup_controller.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final _formKey = GlobalKey<FormState>();

    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            controller: controller.fullName,
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Icons.person_outline_rounded,
                color: Color(0xFF272727),
              ),
              labelText: "Full Name",
              hintText: "Full Name",
              border: OutlineInputBorder(),
              labelStyle: TextStyle(
                color: Color(0xFF272727),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2.0,
                  color: Color(0xFF272727),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: controller.email,
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Icons.email_outlined,
                color: Color(0xFF272727),
              ),
              labelText: "Email Address",
              hintText: "Email Address",
              border: OutlineInputBorder(),
              labelStyle: TextStyle(
                color: Color(0xFF272727),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2.0,
                  color: Color(0xFF272727),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: controller.phoneNo,
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Icons.numbers,
                color: Color(0xFF272727),
              ),
              labelText: "Phone No",
              hintText: "Phone No",
              border: OutlineInputBorder(),
              labelStyle: TextStyle(
                color: Color(0xFF272727),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2.0,
                  color: Color(0xFF272727),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          TextFormField(
            controller: controller.password,
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Icons.remove_red_eye_sharp,
                color: Color(0xFF272727),
              ),
              labelText: "Password",
              hintText: "Password",
              border: OutlineInputBorder(),
              labelStyle: TextStyle(
                color: Color(0xFF272727),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  width: 2.0,
                  color: Color(0xFF272727),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  SignUpController.instance.registerUser(
                      controller.email.text.trim(),
                      controller.password.text.trim());
                }
              },
              child: const Text("Sign Up"),
            ),
          ),
        ],
      ),
    );
  }
}
