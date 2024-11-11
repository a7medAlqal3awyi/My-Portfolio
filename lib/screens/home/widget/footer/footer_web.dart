import 'package:flutter/material.dart';
import 'package:portfolio/screens/home/widget/footer/widgets/rich_text_short.dart';
import 'package:portfolio/screens/home/widget/footer/widgets/text_with_link.dart';

import '../../../../core/platform_info/widgets/platform_info_widget.dart';
import '../../../../core/shared/app_urls.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/themes/text_styles.dart';
import '../../../../core/widgets/body/web_body.dart';


class FooterWeb extends StatelessWidget {
  const FooterWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 128,
      color: AppColors.black,
      alignment: Alignment.center,
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: const WebBody(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichTextShort(
                    textAlign: TextAlign.start,
                  ),
                  SelectableText(
                    "Flutter Project Open Source",
                    style: AppTextStyles.phraseWhite,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [

                  TextWithLink(
                    text: "See In Git Hub",
                    link: AppUrls.gitHubProject,
                  ),
                  TextWithLink(
                    text: "See In Figma",
                    link: AppUrls.figmaProject,
                  ),
                ],
              ),
            ],
          ),
          // PlatformInfoWidget(
          //   padding: EdgeInsets.all(0),
          // ),
        ],
      ),
    );
  }
}
