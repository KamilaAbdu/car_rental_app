import 'package:flutter/material.dart';
import 'package:practice_app/core/constants/app_colors.dart';
import 'package:practice_app/core/constants/app_dimens.dart';
import 'package:practice_app/core/constants/app_text_styles.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.darkBlue.withOpacity(0.5),
      child: Column(
        children: [
          Text(
            'TIIRA',
            style: AppTextStyles.s48w400.copyWith(color: Colors.white),
          ),
          const SizedBox(height: AppDimens.minVerticalPadding),
          Text(
            'Table of Content',
            style: AppTextStyles.s20w700.copyWith(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
