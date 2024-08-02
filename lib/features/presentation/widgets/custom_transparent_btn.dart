import 'package:flutter/material.dart';
import 'package:practice_app/core/constants/app_text_styles.dart';

class CustomTransparentButton extends StatelessWidget {
  const CustomTransparentButton(
      {super.key, required this.text, required this.imageIcon});

  final String text;
  final String imageIcon;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        side: const BorderSide(width: 2, color: Colors.black),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        backgroundColor: Colors.white,
      ),
      onPressed: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: Row(
          children: [
            Image.asset(
              imageIcon,
              height: 30,
            ),
            const SizedBox(width: 20),
            Text(
              text,
              style: AppTextStyles.s16w400.copyWith(color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
