import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/extensions/extensions.dart';
import 'package:portfolio/core/shared/app_urls.dart';
import 'package:portfolio/screens/home/widget/presentation/widgets/download_button.dart';

import '../../../../core/utils/url_launcher.dart';
import '../../../../core/widgets/body/mobile_body.dart';
import '../../../../core/widgets/dividers/section_divider.dart';
import '../../../../core/widgets/gradients/gradient_widget.dart';
import '../../../../core/widgets/section/section_text.dart';
import '../../../../core/widgets/section/section_title.dart';


class ProjectsMobile extends StatelessWidget {
  const ProjectsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Positioned(
              bottom: 4,
              child: Stack(
                children: [
                  Image.asset(
                    "assets/components/projects/mobile-abstract.png",
                    width: context.width,
                  ),
                ],
              ),
            ),
            Positioned.fill(
              child: GradientWidget(
                radius: 0.6,
                width: context.width,
                height: context.height,
                alignment: const Alignment(0.0, 0.5),
              ),
            ),
            MobileBody(
              children: [
                const SectionTitle(
                  paddingTop: 50,
                  paddingBottom: 20,
                  title: "Projects",
                ),
                const  Center(
                  child: SectionText(
                    paddingTop: 0,
                    paddingBottom: 24,
                    title: "Most of the projects I have developed are completely open-source on my GitHub.",
                  ),
                ),
                // const AppTextButtonWidget(),
                DownloadButton(
                  text: "See Projects",
                  icon: FontAwesomeIcons.github,
                  onTap: ()=>LaunchUrls().launchURL(AppUrls.gitHub)
                ),
                const SizedBox(height: 20,),
                Container(
                  alignment: Alignment.center,
                  child:  Image.asset(
                    "assets/components/projects/Mockup.png",
                    width: 324,
                  ),
                ),
              ],
            ),
          ],
        ),
        const SectionDivider(),
      ],
    );
  }
}
