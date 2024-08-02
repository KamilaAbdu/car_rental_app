import 'package:flutter/material.dart';
import 'package:practice_app/core/constants/app_colors.dart';
import 'package:practice_app/core/constants/app_text_styles.dart';

class MainChoiseChip extends StatelessWidget {
  const MainChoiseChip({
    super.key,
    required this.label,
    required this.selected,
    required this.onSelected,
  });

  final String label;
  final bool selected;
  final Function(bool) onSelected;

  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      showCheckmark: false,
      onSelected: onSelected,
      backgroundColor: Colors.white,
      selectedColor: AppColors.darkBlue,
      label: Text(label),
      selected: selected,
      side: const BorderSide(color: AppColors.darkBlue),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      labelStyle: AppTextStyles.s12w700
          .copyWith(color: selected ? Colors.white : Colors.black),
    );
  }
}
