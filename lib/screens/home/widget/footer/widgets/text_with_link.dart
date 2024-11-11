import 'package:flutter/material.dart';

import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/themes/text_styles.dart';
import '../../../../../core/utils/url_launcher.dart';


class TextWithLink extends StatelessWidget {
  const TextWithLink({
    super.key,
    required this.text,
    required this.link,
  });

  final String text, link;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.transparent,
      borderRadius: BorderRadius.circular(8),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        splashColor: AppColors.primary,
        overlayColor: WidgetStateProperty.all(
          AppColors.primary.withOpacity(0.25),
        ),
        onTap: () => LaunchUrls().launchURL(link),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Text(
            text,
            style: AppTextStyles.footerLink,
          ),
        ),
      ),
    );
  }
}
