import 'package:flutter/material.dart';
import 'package:portfolio/screens/home/widget/social/widgets/title_text_list.dart';

import '../../../../../core/widgets/body/web_body.dart';
import '../../../../../core/widgets/dividers/section_divider.dart';

class SocialAllCardsWeb extends StatelessWidget {
  const SocialAllCardsWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child:  Column(
        children: [
          WebBody(
            children: [
              TitleTextList(isWeb: true),
            ],
          ),
          SizedBox(height: 60),
          SectionDivider(),
        ],
      ),
    );
  }
}
