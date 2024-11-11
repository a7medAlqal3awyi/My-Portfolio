import 'package:flutter/material.dart';

import '../../core/themes/app_colors.dart';


class MobileAppBar extends StatelessWidget {
  const MobileAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      surfaceTintColor: AppColors.transparent,
      actions: [
        Flexible(
          child: Container(
            alignment: Alignment.centerRight,
            padding: const EdgeInsets.only(right: 16),
            child: const SelectableText(
              'AK',
              style: TextStyle(
                letterSpacing: 1.5,
                color: AppColors.primary,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}


