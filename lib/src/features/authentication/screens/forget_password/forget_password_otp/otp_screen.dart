import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Co\nde'),
            const Text('Verification'),
            const SizedBox(height: 40.0),
            const Text(
              'Enter the verification code sent at support@codingwith.com',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20.0),
            OtpTextField(
              numberOfFields: 6,
              mainAxisAlignment: MainAxisAlignment.center,
              fillColor: Colors.black.withOpacity(0.1),
              filled: true,
              onSubmit: (otpCode) {
                print(otpCode);
              },
            ),
            const SizedBox(height: 20.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Next'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
