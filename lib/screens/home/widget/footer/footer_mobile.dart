import 'package:flutter/material.dart';
import 'package:portfolio/screens/home/widget/footer/widgets/rich_text_short.dart';

import '../../../../core/themes/app_colors.dart';

class FooterMobile extends StatelessWidget {
  const FooterMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      alignment: Alignment.center,
      color: AppColors.black,
      child: const RichTextShort(textAlign: TextAlign.center),
    );
  }
}
