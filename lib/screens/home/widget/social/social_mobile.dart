import 'package:flutter/material.dart';
import 'package:portfolio/core/extensions/extensions.dart';
import 'package:portfolio/screens/home/widget/social/widgets/social_all_cards_mobile.dart';

import '../../../../core/widgets/gradients/gradient_widget.dart';


class SocialMobile extends StatelessWidget {
  const SocialMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          child: Image.asset(
            "assets/components/social/abstract.png",
            width: context.width,
          ),
        ),
        Positioned.fill(
          child: Opacity(
            opacity: 0.7,
            child: GradientWidget(
              height: 350,
              width: context.width,
              radius: 0.7,
            ),
          ),
        ),
        const SocialAllCardsMobile(),
      ],
    );
  }
}
