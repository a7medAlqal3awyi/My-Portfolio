import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/themes/text_styles.dart';
import 'card_glassmorphism.dart';


class SocialItem extends StatelessWidget {
  const SocialItem({
    super.key,
    required this.title,
    required this.image,
    required this.onTap,
  });

  final String title;
  final String image;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.transparent,
      borderRadius: BorderRadius.circular(16),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(16),
        customBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: CardGlassmorphism(
          child: Row(
            children: [
              const SizedBox(width: 24),
              SizedBox(
                height: 30,
                width: 30,
                child: SvgPicture.asset(
                  "assets/components/social/$image",
                ),
              ),
              const SizedBox(width: 10),
              Flexible(
                child: Text(
                  title,
                  style: AppTextStyles.socialTitle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
