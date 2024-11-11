import 'package:flutter/material.dart';
import 'package:portfolio/core/extensions/extensions.dart';
import 'package:portfolio/screens/home/widget/social/widgets/social_all_cards_web.dart';

import '../../../../core/widgets/gradients/gradient_widget.dart';


class SocialWeb extends StatelessWidget {
  const SocialWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          bottom: 4,
          child: Image.asset(
            "assets/components/social/abstract-large.png",
            alignment: Alignment.topCenter,
            width: context.width,
            height: 495,
          ),
        ),
        Positioned.fill(
          child: Opacity(
            opacity: 0.75,
            child: GradientWidget(
              height: 400,
              width: context.width,
              radius: 0.75,
            ),
          ),
        ),
        const SocialAllCardsWeb(),
      ],
    );
  }
}
