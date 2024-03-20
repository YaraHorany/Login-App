import 'package:flutter/material.dart';

class ForgetPasswordPhoneScreen extends StatelessWidget {
  const ForgetPasswordPhoneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              children: [
                const SizedBox(height: 120),
                const Text(
                  "Forget Password",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 10.0),
                const Text(
                  "Select one of the options given below to reset your password.",
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 30.0),
                Form(
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.mobile_friendly_rounded,
                            color: Color(0xFF272727),
                          ),
                          labelText: "Phone Number",
                          hintText: "Phone Number",
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
                          onPressed: () {},
                          child: const Text("Next"),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
