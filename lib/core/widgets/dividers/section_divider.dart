import 'package:flutter/material.dart';


import '../../themes/app_colors.dart';

class SectionDivider extends StatelessWidget {
  const SectionDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.primary,
      height: 2,
    );
  }
}
