import 'package:flutter/material.dart';
import 'package:practice_app/core/constants/app_assets.dart';
import 'package:practice_app/core/constants/app_colors.dart';

class CarModels {
  final String image;
  final int price;
  final String title;
  final String year;
  final String transition;
  final String speed;
  final String owner;

  Color bgColor;

  CarModels(
      {required this.year,
      required this.owner,
      required this.transition,
      required this.speed,
      required this.image,
      required this.price,
      required this.title,
      this.bgColor = AppColors.lightGrey});
}

List<CarModels> dataCars = [
  CarModels(image: AppAssets.toyota, price: 300, title: 'TOYOTA', transition: 'Automatic', speed: '220kmph', year: '2021', owner: 'Edward Callin'),
  CarModels(image: AppAssets.lamborgini, price: 550, title: 'Lamborgini', transition: 'Automatic', speed: '180kmph', year: '2020', owner: 'Bella Swan'),
  CarModels(image: AppAssets.rangeRover, price: 200, title: 'Range Rover', transition: 'Automatic', speed: '200kmph', year: '2022', owner: 'Michael Johns'),
  CarModels(image: AppAssets.tesla, price: 150, title: 'Tesla', transition: 'Automatic', speed: '160kmph', year: '2024', owner: 'Cammie Ace'),
];
