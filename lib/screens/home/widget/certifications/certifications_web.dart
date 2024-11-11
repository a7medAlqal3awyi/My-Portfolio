import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/core/extensions/extensions.dart';
import 'package:portfolio/core/widgets/body/body.dart';

import '../../../../core/mixins/responsive_position_mixin.dart';
import '../../../../core/utils/url_launcher.dart';
import '../../../../core/widgets/gradients/gradient_widget.dart';
import '../../../../core/widgets/section/section_title.dart';
import 'model/certification_model.dart';

class CertificationsWeb extends StatefulWidget with ResponsivePositionMixin {
  const CertificationsWeb({
    super.key,
  });

  @override
  State<CertificationsWeb> createState() => _CertificationsWebState();
}

class _CertificationsWebState extends State<CertificationsWeb> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrains) {
      return Stack(
        children: [
          Positioned(
            bottom: 0,
            child: Image.asset(
              "assets/components/contact/horizontal-texture.png",
              height: context.height,
              width: context.width,
            ),
          ),
          Center(
            child: WebBody(
              children: [

                const SectionTitle(
                  isWeb: true,
                  paddingTop: 50,
                  paddingBottom: 12,
                  title: "Certifications",
                ),
                SizedBox(
                  height: 550,
                  child: GridView.builder(

                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 1.7, crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return MouseRegion(
                        onEnter: (event) => _onHover(true),
                        onExit: (event) => _onHover(false),
                        child: AnimatedContainer(

                          padding: const EdgeInsets.all(20),
                          height: double.infinity,
                          width: double.infinity,
                          duration: const Duration(milliseconds: 200),
                          margin: const EdgeInsets.symmetric(
                              vertical: 20, horizontal: 20),
                          decoration: BoxDecoration(

                              borderRadius: BorderRadius.circular(30),
                              color: const Color(0xFF000515),
                              // gradient: const LinearGradient(colors: [
                              //   Colors.pinkAccent,
                              //   Colors.blue,
                              // ]),

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
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(
                                    "organization",
                                    style: TextStyle(color: Colors.amber),
                                  ),
                                  Text(
                                    certificateList[index].organization,
                                    style: const TextStyle(
                                        color: Colors.grey, fontSize: 14),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 20 ,
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
                                  height: 40,
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'Credentials',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 10),
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
                        ),
                      );
                    },
                    itemCount: certificateList.length,
                  ),
                ),
              ],
            ),
          )
        ],
      );
    });
  }
  void _onHover(bool hover) {
    setState(() {
      isHovered = hover;
    });
  }

}
