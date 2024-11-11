import 'package:flutter/material.dart';
import 'package:portfolio/screens/home/widget/social/social_mobile.dart';
import 'package:portfolio/screens/home/widget/social/social_web.dart';

import '../../../../core/responsive/breakpoints.dart';
import '../../../../core/shared/app_keys.dart';

class Social extends StatelessWidget {
  const Social({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      key: AppKeys.social,
      builder: (context, constraints) {
        return constraints.maxWidth < Breakpoints.social
            ? const SocialMobile()
            : const SocialWeb();
      },
    );
  }
}
