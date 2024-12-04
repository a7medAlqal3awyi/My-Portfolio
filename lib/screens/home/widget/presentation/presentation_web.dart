import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/extensions/extensions.dart';
import 'package:portfolio/screens/home/widget/presentation/widgets/download_button.dart';

import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../core/mixins/responsive_position_mixin.dart';
import '../../../../core/shared/app_urls.dart';
import '../../../../core/widgets/body/web_body.dart';
import '../../../../core/widgets/dividers/gradient_divider.dart';
import '../../../../core/widgets/dividers/presentation_divider.dart';
import '../../../../core/widgets/gradients/gradient_widget.dart';
import '../../../../core/widgets/section/section_subtitle.dart';
import '../../../../core/widgets/section/section_text.dart';
import '../../../../core/widgets/section/section_title.dart';

class PresentationWeb extends StatelessWidget with ResponsivePositionMixin {
  const PresentationWeb(
    this.itemScrollController, {
    super.key,
  });

  final ItemScrollController itemScrollController;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Stack(
          children: [
            Positioned.fill(
              child: GradientWidget(
                radius: 0.7,
                height: context.height,
                width: context.width,
                alignment: Alignment(
                  gradientPresentationWidthAlignment(constraints.maxWidth),
                  0,
                ),
              ),
            ),
            Positioned.fill(
              child: Image.asset(
                "assets/components/presentation/texture-large.png",
                height: context.height,
                width: context.width,
              ),
            ),
            SingleChildScrollView(
              physics: const NeverScrollableScrollPhysics(),
              child: Column(
                children: [
                  WebBody(
                    children: [
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SectionTitle(
                            isWeb: true,
                            paddingTop: 50,
                            paddingBottom: 12,
                            title: "Iam Ahmed Khaled",

                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 50.0),
                            child: ConnectButton(),
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
                                const SectionSubtitle(
                                  paddingTop: 0,
                                  paddingBottom: 32,

                                  title: "> Software Engineer | Mobile Application | Flutter Developer",
                                ),
                                const SizedBox(
                                  width: 400,
                                  child: GradientDivider(),
                                ),

                                const SizedBox(
                                  child: Center(
                                    child: SectionText(
                                      paddingTop: 32,

                                      paddingBottom: 32,
                                      title:
                                          "Developer focused on applying his\nknowledge in practice and building\namazing things through lines of code.",
                                    ),
                                  ),
                                ),
                                // const Phrase(),
                                const SizedBox(
                                  height: 30,
                                ),

                                MyButton(text: "My Resume",
                                  onTap: (){
                                    launchUrl(Uri.parse(AppUrls.resume));

                                  },),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 24,
                            height: 24,
                          ),
                          Expanded(
                            child: Container(
                              alignment: Alignment.center,
                              clipBehavior: Clip.antiAliasWithSaveLayer,

                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(35)
                                 ),
                              child: Image.asset(
                                "assets/components/presentation/red.jpg",
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                  PresentationDivider(itemScrollController),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

class ConnectButton extends StatelessWidget {
  const ConnectButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: InkWell(
        onTap: () {
          launchUrl(Uri.parse('https://wa.me/+201025241470'));
        },
        borderRadius: BorderRadius.circular(20 + 10),
        child: Container(
            height: 50,
            width: 150,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(colors: [
                  Colors.pink,
                  Colors.blue.shade900,
                ]),
                boxShadow: const [
                  BoxShadow(
                      color: Colors.blue,
                      offset: Offset(0, -1),
                      blurRadius: 20 / 4),
                  BoxShadow(
                      color: Colors.red,
                      offset: Offset(0, 1),
                      blurRadius: 20 / 4),
                ]
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  FontAwesomeIcons.whatsapp,
                  color: Colors.greenAccent,
                  size: 15,
                ),
                const SizedBox(width: 20 / 4),
                Text(
                  'Whatsapp',
                  style: Theme.of(context).textTheme.labelSmall!.copyWith(
                      color: Colors.white,
                      letterSpacing: 1.2,
                      fontWeight: FontWeight.bold),
                ),
              ],
            )),
      ),
    );
  }
}
