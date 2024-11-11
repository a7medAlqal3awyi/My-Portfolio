import 'package:flutter/material.dart';

import '../../../../core/mixins/responsive_position_mixin.dart';
import '../../../../core/widgets/body/web_body.dart';
import '../../../../core/widgets/dividers/gradient_divider.dart';
import '../../../../core/widgets/dividers/section_divider.dart';
import '../../../../core/widgets/section/section_subtitle.dart';
import '../../../../core/widgets/section/section_text.dart';
import '../../../../core/widgets/section/section_title.dart';

class SkillsWeb extends StatelessWidget with ResponsivePositionMixin {
  const SkillsWeb({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              physics: NeverScrollableScrollPhysics(),
              child: Column(
                children: [
                  WebBody(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SectionTitle(
                            isWeb: true,
                            paddingTop: 50,
                            paddingBottom: 12,
                            title: "Skills and Technologies",
                          ),
                        ],
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
                                  paddingBottom: 20,
                                  title: "Programming Languages",
                                ),
                                SizedBox(
                                  width: 280,
                                  child: GradientDivider(),
                                ),
                                SectionText(
                                  paddingTop: 20,
                                  paddingBottom: 20,
                                  title: "Dart, Java, C++, kotlin",
                                ),
                                // const Phrase(),
                                SizedBox(
                                  height: 30,
                                ),

                                SectionSubtitle(
                                  paddingTop: 20,
                                  paddingBottom: 20,
                                  title: "Frameworks",
                                ),
                                SizedBox(
                                  width: 150,
                                  child: GradientDivider(),
                                ),

                                SectionText(
                                  paddingTop: 20,
                                  paddingBottom: 20,
                                  title: "Flutter",
                                ),
                                SizedBox(
                                  height: 30,
                                ),

                                SectionSubtitle(
                                  paddingTop: 20,
                                  paddingBottom: 20,
                                  title: "Architectural Patterns",
                                ),
                                SizedBox(
                                  width: 240,
                                  child: GradientDivider(),
                                ),

                                SectionText(
                                  paddingTop: 20,
                                  paddingBottom: 20,
                                  title:
                                      "Clean Code, Clean Architecture, Bloc Pattern, MVVM",
                                ),
                                SizedBox(
                                  height: 30,
                                ),
                                SectionSubtitle(
                                  paddingTop: 20,
                                  paddingBottom: 20,
                                  title: "Tools",
                                ),
                                SizedBox(
                                  width: 70,
                                  child: GradientDivider(),
                                ),

                                SectionText(
                                  paddingTop: 20,
                                  paddingBottom: 20,
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
            ),
            SectionDivider(),
          ],
        );
      },
    );
  }
}
