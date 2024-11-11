import 'package:flutter/material.dart';
import 'package:portfolio/screens/home/widget/social/widgets/social_list.dart';

import '../../../../../core/widgets/section/section_text.dart';
import '../../../../../core/widgets/section/section_title.dart';


class TitleTextList extends StatelessWidget {
  const TitleTextList({
    super.key,
    this.isWeb = false,
  });

  final bool isWeb;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTitle(
          isWeb: isWeb,
          paddingTop: 50,
          paddingBottom: 20,
          title: "Social Links",
        ),
         const SectionText(
          paddingTop: 0,
          paddingBottom: 24,
          title: "Follow Me On My Social Networks",
        ),
        const Center(
          child: SocialList(),
        ),
      ],
    );
  }
}
