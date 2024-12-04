import 'package:flutter/material.dart';
import 'package:portfolio/core/extensions/extensions.dart';
import 'package:portfolio/screens/home/widget/presentation/widgets/download_button.dart';

import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/responsive/breakpoints.dart';
import '../../../../core/shared/app_urls.dart';
import '../../../../core/widgets/body/mobile_body.dart';
import '../../../../core/widgets/dividers/gradient_divider.dart';
import '../../../../core/widgets/dividers/presentation_divider.dart';
import '../../../../core/widgets/gradients/gradient_widget.dart';
import '../../../../core/widgets/section/section_subtitle.dart';
import '../../../../core/widgets/section/section_text.dart';
import '../../../../core/widgets/section/section_title.dart';


class PresentationMobile extends StatelessWidget {
  const PresentationMobile(
    this.itemScrollController, {
    super.key,
  });

  final ItemScrollController itemScrollController;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: GradientWidget(
            radius: 0.9,
            height: context.height,
            width: context.width,
            alignment: Alignment.center,
          ),
        ),
        Positioned.fill(
          child: GradientWidget(
            opacity: 0.75,
            radius: 1,
            height: context.height,
            width: context.width,
            alignment: Alignment.bottomCenter,
          ),
        ),
        Positioned(
          bottom: 0,
          child: Image.asset(
            "assets/components/presentation/texture-background.png",
            width: context.width,
            height: context.height,
          ),
        ),
        SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),

          child: Column(
            children: [
              MobileBody(
                children: <Widget>[
                  const SectionTitle(
                    paddingTop: 50,
                    paddingBottom: 16,
                    title: "Ahmed Khaled Alkalawyi",
                  ),
                  LayoutBuilder(
                    builder: (context, constraints) {
                      return constraints.maxWidth <
                              Breakpoints.presentationMobileSubtitle
                          ? const SizedBox.shrink()
                          : const SectionSubtitle(
                              paddingTop: 8,
                              paddingBottom: 8,
                              title:
                                  "Applications Developer",
                            );
                    },
                  ),
                  // ConnectButton(),
                  const GradientDivider(),
                  const SizedBox(height: 30,),
                  Container(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(35),
                    ),
                    child:  Image.asset(

                      "assets/components/presentation/red.jpg",
                    ),
                  ),

                  const Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: SectionText(
                        paddingTop: 24,
                        paddingBottom: 8,
                        isCentered: true,
                        title: "Developer focused on applying his knowledge in practice and building amazing things through lines of code.",
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                   MyButton(text: "My Resume",
                  onTap: (){
                    launchUrl(Uri.parse(AppUrls.resume));

                  },),
                  const SizedBox(height: 20,),




                ],
              ),

              PresentationDivider(itemScrollController),

            ],
          ),
        ),
      ],
    );
  }
}
