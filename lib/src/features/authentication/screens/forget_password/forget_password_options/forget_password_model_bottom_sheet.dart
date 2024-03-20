import 'package:flutter/material.dart';
import 'package:login_app/src/features/authentication/screens/forget_password/forget_password_mail/forget_password_mail.dart';
import '../forget_password_phone/forget_password_phone.dart';
import 'forget_password_btn_widget.dart';
import 'package:get/get.dart';

class ForgetPasswordScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(20.0),
          topLeft: Radius.circular(20.0),
        ),
      ),
      context: context,
      builder: (context) => Container(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Make Selection!"),
            const Text(
                "Select one of the options given below to reset your password."),
            const SizedBox(height: 30.0),
            ForgetPasswordBtnWidget(
              btnIcon: Icons.mail_outline_rounded,
              title: 'Email Address',
              subTitle: 'Reset via E-Mail Verification',
              onTap: () {
                Navigator.pop(context);
                Get.to(const ForgetPasswordMailScreen());
              },
            ),
            const SizedBox(height: 10.0),
            ForgetPasswordBtnWidget(
              btnIcon: Icons.mobile_friendly_rounded,
              title: 'Phone No',
              subTitle: 'Reset via Phone Verification',
              onTap: () {
                Navigator.pop(context);
                Get.to(const ForgetPasswordPhoneScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
