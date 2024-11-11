import 'package:flutter/material.dart';

import '../../themes/app_colors.dart';

class GradientWidget extends StatelessWidget {
  const GradientWidget({
    super.key,
    this.radius = 0.8,
    this.alignment = Alignment.center,
    this.opacity = 1,
    this.gradient,
    this.height,
    this.width,
  });

  final double radius, opacity;
  final AlignmentGeometry alignment;
  final Gradient? gradient;
  final double? height, width;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: opacity,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          gradient: RadialGradient(
            colors: const [
              AppColors.primary,
              AppColors.transparent,
            ],
            center: alignment,
            radius: radius,
          )
        ),
      ),
    );
  }
}
