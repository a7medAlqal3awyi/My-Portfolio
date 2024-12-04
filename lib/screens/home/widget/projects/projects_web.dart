import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/extensions/extensions.dart';

import '../../../../core/mixins/responsive_position_mixin.dart';
import '../../../../core/shared/app_urls.dart';
import '../../../../core/utils/url_launcher.dart';
import '../../../../core/widgets/body/web_body.dart';
import '../../../../core/widgets/dividers/section_divider.dart';
import '../../../../core/widgets/gradients/gradient_widget.dart';
import '../../../../core/widgets/section/section_text.dart';
import '../../../../core/widgets/section/section_title.dart';
import '../presentation/widgets/download_button.dart';


class ProjectsWeb extends StatelessWidget with ResponsivePositionMixin {
  const ProjectsWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          children: [
            Positioned.fill(
              bottom: 4,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Image.asset(
                  "assets/components/projects/large-abstract.png",
                  alignment: Alignment.topCenter,
                  height: 305.7,
                  width: context.width,
                ),
              ),
            ),
            Positioned.fill(
              child: GradientWidget(
                opacity: 0.8,
                radius: 0.75,
                width: context.width,
                height: context.height,
                alignment: Alignment(
                  -gradientExperienceAndProjectsSectionWidthAlignment(
                    constraints.maxWidth,
                  ),
                  0.18,
                ),
              ),
            ),
            Column(
              children: [
                WebBody(
                  children: [
                    const SectionTitle(
                      isWeb: true,
                      paddingTop: 50,
                      paddingBottom: 8,
                      title: "Projects",
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(
                                width: 400,
                                child: SectionText(
                                  paddingTop: 42,
                                  paddingBottom: 36,
                                  title: "Most of the projects I have developed\nare completely open-source on my\nGitHub.",
                                ),
                              ),
                              // AppTextButtonWidget(),
                              MyButton(
                                  text: "See Projects",
                                  icon: FontAwesomeIcons.github,
                                  onTap: ()=>LaunchUrls().launchURL(AppUrls.gitHub)
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                alignment: Alignment.center,
                                child:  Image.asset(
                                  "assets/components/projects/Mockup.png",
                                  width: 460,
                                ),
                              ),
                              const SizedBox(height: 60),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SectionDivider(),
              ],
            ),
          ],
        );
      },
    );
  }
}
