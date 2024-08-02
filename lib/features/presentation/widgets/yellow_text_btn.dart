import 'package:flutter/material.dart';
import 'package:practice_app/core/constants/app_colors.dart';
import 'package:practice_app/core/constants/app_text_styles.dart';

class YellowTextButton extends StatelessWidget {
  const YellowTextButton({super.key, required this.text, required this.onPressed});

  final String text;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: TextButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: AppTextStyles.s13w700
                .copyWith(color: AppColors.yellowText)
                .copyWith(fontStyle: FontStyle.italic),
          )),
    );
  }
}
