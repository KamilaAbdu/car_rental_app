import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:practice_app/core/constants/app_colors.dart';
import 'package:practice_app/core/constants/app_text_styles.dart';

class CustomCarCard extends StatelessWidget {
  const CustomCarCard(
      {super.key,
      required this.title,
      required this.price,
      required this.image,
      this.bgColor = AppColors.cardBG, required this.onTap});

  final String title;
  final int price;
  final String image;
  final Color bgColor;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          decoration: BoxDecoration(
            color: bgColor,
            boxShadow: [
              BoxShadow(
                spreadRadius: 3,
                blurRadius: 1,
                offset: const Offset(0, 4),
                color: Colors.black.withOpacity(0.1),
              ),
            ],
            borderRadius: BorderRadius.circular(5),
          ),
          height: 169,
          width: 152,
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                Image.asset(
                  image,
                  height: 80,
                ),
                Text(
                  title.toUpperCase(),
                  style: AppTextStyles.s11w400,
                  textAlign: TextAlign.start,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Text('\$$price', style: AppTextStyles.s10w400),
                        Text('/day',
                            style: AppTextStyles.s10w400
                                .copyWith(color: AppColors.lightBronw)),
                      ],
                    )),
                const Row(
                  children: [
                    Spacer(),
                    Icon(
                      Icons.favorite_border_rounded,
                      color: Colors.red,
                      size: 18,
                    ),
                    SizedBox(width: 6),
                    Icon(
                      Icons.arrow_circle_right,
                      color: AppColors.darkBlue,
                      size: 18,
                    ),
                    SizedBox(width: 10),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
