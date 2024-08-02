import 'package:flutter/material.dart';
import 'package:practice_app/core/constants/app_colors.dart';

class CarModels {
  final String image;
  final int price;
  final String title;

  Color bgColor;

  CarModels({ 
      required this.image,
      required this.price,
      required this.title,
      this.bgColor = AppColors.lightGrey});
}
