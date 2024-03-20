import 'package:flutter/material.dart';

class ForgetPasswordBtnWidget extends StatelessWidget {
  final IconData btnIcon;
  final VoidCallback onTap;
  final String title, subTitle;

  const ForgetPasswordBtnWidget({
    super.key,
    required this.btnIcon,
    required this.onTap,
    required this.title,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: Colors.grey.shade200,
        ),
        child: Row(
          children: [
            Icon(
              btnIcon,
              size: 60.0,
            ),
            const SizedBox(width: 10.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title),
                Text(subTitle),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
