import 'package:flutter/material.dart';

import '../../themes/app_colors.dart';


class GradientDivider extends StatelessWidget {
  const GradientDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      margin: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            AppColors.primary,
            AppColors.primaryLight,

          ],
        ),
        borderRadius: BorderRadius.circular(6),
      ),
    );
  }
}
