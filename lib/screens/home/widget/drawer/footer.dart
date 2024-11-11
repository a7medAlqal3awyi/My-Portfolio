import 'package:flutter/material.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/text_styles.dart';


class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      margin: const EdgeInsets.only(top: 4),
      color: AppColors.primary,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SelectableText(
            "created By Ahmed Khaled",
            style: AppTextStyles.footer,
          ),
          const SizedBox(width: 2),
           Image.asset(
            "assets/developer.png",
            height: 16,
          ),
        ],
      ),
    );
  }
}
