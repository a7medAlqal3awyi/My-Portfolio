import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/extensions/extensions.dart';
import 'package:portfolio/screens/home/widget/certifications/model/certification_model.dart';

import '../../../../core/utils/url_launcher.dart';
import '../../../../core/widgets/body/mobile_body.dart';
import '../../../../core/widgets/dividers/section_divider.dart';
import '../../../../core/widgets/gradients/gradient_widget.dart';
import '../../../../core/widgets/section/section_title.dart';

class CertificationsMobile extends StatelessWidget {
   const CertificationsMobile({
    super.key,
  });

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
                    "assets/components/contact/vertical-texture.png",
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
                  title: "Certifications",
                ),
                SizedBox(
                  height: 1100,
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      childAspectRatio: 1.3,
                    ),
                    itemCount: certificateList.length,
                    itemBuilder: (context,index){
                      return AnimatedContainer(
                        padding: const EdgeInsets.all(20),
                        height: 220,
                        width: 300,
                        duration: const Duration(milliseconds: 200),
                        margin:
                        const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color(0xFF000515),


                            boxShadow: const [
                              BoxShadow(
                                color: Colors.pink,
                                offset: Offset(-2, 0),
                                blurRadius: 20,
                              ),
                              BoxShadow(
                                color: Colors.blue,
                                offset: Offset(2, 0),
                                blurRadius: 20,
                              ),
                            ]),
                        child: Column(
                          children: [
                            Text(
                              certificateList[index].name,
                              style: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              certificateList[index].organization,
                              style: const TextStyle(color: Colors.amber),
                            ),
                            const SizedBox(
                              height: 20 / 2,
                            ),
                            Text.rich(
                              maxLines: 1,
                              TextSpan(
                                  text: 'Skills : ',
                                  style: const TextStyle(
                                    color: Colors.white,
                                  ),
                                  children: [
                                    TextSpan(
                                      text: certificateList[index].skills,
                                      style: const TextStyle(
                                          color: Colors.grey,
                                          overflow: TextOverflow.ellipsis),
                                    )
                                  ]),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            InkWell(
                              onTap: () {
                                LaunchUrls().launchURL(certificateList[index].credential);
                              },
                              child: Container(
                                height: 50,
                                width: 150,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    gradient: LinearGradient(colors: [
                                      Colors.pink,
                                      Colors.blue.shade900,
                                    ]),
                                    boxShadow: const [
                                      BoxShadow(
                                          color: Colors.blue,
                                          offset: Offset(0, -1),
                                          blurRadius: 5),
                                      BoxShadow(
                                          color: Colors.red,
                                          offset: Offset(0, 1),
                                          blurRadius: 5),
                                    ]),
                                child: const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Credentials',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Icon(
                                      CupertinoIcons.arrow_turn_up_right,
                                      color: Colors.white,
                                      size: 10,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),


              ],
            ),
            const SectionDivider(),
          ],
        ),
      ],
    );
  }
}
