import 'package:flutter/material.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/text_styles.dart';

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(16, 24, 16, 8),
          width: 120,
          height: 120,
          padding: const EdgeInsets.all(4),
          decoration:  BoxDecoration(
            color: AppColors.primary,
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Colors.pink,
                Colors.blue.shade900,
              ],
            ),
            // gradient: LinearGradient(
            //   colors: [
            //     AppColors.primary,
            //     AppColors.primaryDark,
            //     AppColors.shadow,
            //   ],
            //   begin: Alignment.bottomLeft,
            //   end: Alignment.topRight,
            //   stops: [0.0, 0.5, 0.9],
            // ),
          ),
          child: Container(
            decoration: const BoxDecoration(
              shape: BoxShape.circle,

              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/profile.jpg"),
              ),
            ),
          ),
        ),
         const SelectableText(
          "Ahmed Khaled",
          textAlign: TextAlign.center,
          style: AppTextStyles.phraseWhite,
        ),
        const SizedBox(height: 8),
        const SelectableText(
          "Software Engineer & Mobile Developer",
          textAlign: TextAlign.center,
          style: AppTextStyles.socialTitle,
        ),

      ],
    );
  }
}
