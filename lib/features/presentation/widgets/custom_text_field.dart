import 'package:flutter/material.dart';
import 'package:practice_app/core/constants/app_colors.dart';
import 'package:practice_app/core/constants/app_text_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hintText,
      required this.title,
      this.obscureText = false,
      this.suffix,
      required this.controller, required this.onChanged, this.errorText});

  final String hintText;
  final String title;
  final String? errorText;
  final bool obscureText;
  final Widget? suffix;
  final TextEditingController controller;
  final Function(String) onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppTextStyles.s16w400.copyWith(color: AppColors.darkBlue),
        ),
        TextField(
          onChanged: onChanged,
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            errorText: errorText,
            suffixIcon: suffix,
            hintText: hintText,
            hintStyle:
                AppTextStyles.s16w400.copyWith(color: AppColors.lightGrey),
            enabledBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.underlineInputGrey),
            ),
            focusedBorder: const UnderlineInputBorder(
              borderSide: BorderSide(color: AppColors.underlineInputGrey),
            ),
          ),
        ),
      ],
    );
  }
}
