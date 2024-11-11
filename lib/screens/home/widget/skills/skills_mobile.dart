import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/extensions/extensions.dart';

import '../../../../core/shared/app_urls.dart';
import '../../../../core/utils/url_launcher.dart';
import '../../../../core/widgets/body/mobile_body.dart';
import '../../../../core/widgets/dividers/gradient_divider.dart';
import '../../../../core/widgets/dividers/section_divider.dart';
import '../../../../core/widgets/gradients/gradient_widget.dart';
import '../../../../core/widgets/section/section_subtitle.dart';
import '../../../../core/widgets/section/section_text.dart';
import '../../../../core/widgets/section/section_title.dart';
import '../presentation/widgets/download_button.dart';

class SkillMobile extends StatelessWidget {
  const SkillMobile({super.key});

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
            const MobileBody(
              children: [
                SectionTitle(
                  paddingTop: 50,
                  paddingBottom: 20,
                  title: "Skills and Technologies",
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SectionSubtitle(
                            paddingTop: 20,
                            paddingBottom: 10,
                            title: "Programming Languages",
                          ),
                          SizedBox(
                            width: 280,
                            child: GradientDivider(),
                          ),
                          SectionText(
                            paddingTop: 20,
                            paddingBottom: 10,
                            title: "Dart, Java, C++, kotlin",
                          ),
                          SizedBox(
                            height: 30,
                          ),

                          SectionSubtitle(
                            paddingTop: 20,
                            paddingBottom: 10,
                            title: "Frameworks",
                          ),
                          SizedBox(
                            width: 150,
                            child: GradientDivider(),
                          ),

                          SectionText(
                            paddingTop: 20,
                            paddingBottom: 10,
                            title: "Flutter",
                          ),
                          SizedBox(
                            height: 30,
                          ),

                          SectionSubtitle(
                            paddingTop: 20,
                            paddingBottom: 10,
                            title: "Architectural Patterns",
                          ),
                          SizedBox(
                            width: 240,
                            child: GradientDivider(),
                          ),

                          SectionText(
                            paddingTop: 20,
                            paddingBottom: 10,
                            title:
                            "Clean Code, Clean Architecture, Bloc Pattern, MVVM",
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          SectionSubtitle(
                            paddingTop: 20,
                            paddingBottom: 10,
                            title: "Tools",
                          ),
                          SizedBox(
                            width: 70,
                            child: GradientDivider(),
                          ),

                          SectionText(
                            paddingTop: 20,
                            paddingBottom: 10,
                            title:
                            "Git, Firebase, Postman, Swagger, Figma, SOLID Principles, Slack",
                          ),
                          SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 24,
                      height: 24,
                    ),
                  ],
                ),
                SizedBox(height: 20),
              ],
            ),
          ],
        ),
        const SectionDivider(),
      ],
    );

  }
}
