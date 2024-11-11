import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../../../core/themes/app_colors.dart';


class CardGlassmorphism extends StatelessWidget {
  const CardGlassmorphism({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
        child: Container(
          height: 50,
          width: 278,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(
              colors: [
                AppColors.shadowLightSocial.withOpacity(.05),
                AppColors.shadowLightSocial.withOpacity(.15),
                AppColors.shadowLightSocial.withOpacity(.3),

              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
            border: Border.all(
              width: 1,
              color: AppColors.white.withOpacity(.25),
            ),
          ),
          child: child,
        ),
      ),
    );
  }
}
