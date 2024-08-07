import 'package:flutter/material.dart';
import 'package:practice_app/core/constants/app_colors.dart';
import 'package:practice_app/core/constants/app_text_styles.dart';
import 'package:practice_app/features/car_rental/models/car_model.dart';

class CarsInfoContainer extends StatelessWidget {
  const CarsInfoContainer({
    super.key,
    required this.data, required this.title, required this.subTitle,
  });

  final CarModels data;

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      height: 95,
      width: 155, 
      decoration: BoxDecoration(
        color: AppColors.grey,
        borderRadius: BorderRadius.circular(3),
        boxShadow: [
          BoxShadow(
            spreadRadius: 2,
            blurRadius: 1,
            offset: const Offset(0, 4),
            color: Colors.black.withOpacity(0.1),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: AppTextStyles.s12w700.copyWith(
              color: AppColors.lightBlue,
            ),
          ),
          const SizedBox(height: 7),
          Text(
            subTitle,
            style: AppTextStyles.s12w400.copyWith(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
