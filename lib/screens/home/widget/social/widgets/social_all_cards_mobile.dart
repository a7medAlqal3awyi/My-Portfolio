import 'package:flutter/material.dart';
import 'package:portfolio/screens/home/widget/social/widgets/title_text_list.dart';

import '../../../../../core/widgets/body/mobile_body.dart';
import '../../../../../core/widgets/dividers/section_divider.dart';

class SocialAllCardsMobile extends StatelessWidget {
  const SocialAllCardsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        MobileBody(
          children: [
            TitleTextList(),
          ],
        ),
        SizedBox(height: 60),
        SectionDivider(),
      ],
    );
  }
}
