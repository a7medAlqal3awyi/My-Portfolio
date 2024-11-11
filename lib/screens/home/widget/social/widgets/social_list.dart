import 'package:flutter/material.dart';
import 'package:portfolio/screens/home/widget/social/widgets/social_item.dart';

import '../../../../../core/shared/app_keys.dart';
import '../../../../../core/shared/app_urls.dart';
import '../../../../../core/utils/url_launcher.dart';


class SocialList extends StatelessWidget {
  const SocialList({super.key});

  @override
  Widget build(BuildContext context) {
    final launch = LaunchUrls().launchURL;

    return Column(
      children: [
        SocialItem(
          key: AppKeys.socialItemGitHub,
          title: "GitHub",
          image: "github.svg",
          onTap: () => launch(AppUrls.gitHub),
        ),
        const SizedBox(height: 14),
        SocialItem(
          key: AppKeys.socialItemLinkedIn,
          title: "linkedIn",
          image: "linkedin.svg",
          onTap: () => launch(AppUrls.linkedIn),
        ),
        const SizedBox(height: 14),
        SocialItem(
          key: AppKeys.socialItemUdemy,
          title: "Gmail",
          image: "mail.svg",
          onTap: () => launch(AppUrls.mail),
        ),
        const SizedBox(height: 14),

        SocialItem(
          key: AppKeys.socialItemTelegram,
          title: "Telegram",
          image: "telegram-svgrepo-com.svg",
          onTap: () => launch(AppUrls.tel),
        ),
        const SizedBox(height: 14),
        SocialItem(
          key: AppKeys.socialItemDiscord,
          title: "Discord",
          image: "discord.svg",
          onTap: () => launch(AppUrls.discord),
        ),
        const SizedBox(height: 14),
        // SocialItem(
        //   key: AppKeys.socialItemUdemy,
        //   title: "Gmail",
        //   image: "mail.svg",
        //   onTap: () => launch(AppUrls.mail),
        // ),
        const SizedBox(height: 14),
        SocialItem(
          key: AppKeys.socialItemInstagram,
          title: "Instagram",
          image: "instagram.svg",
          onTap: () => launch(AppUrls.instagram),
        ),
        const SizedBox(height: 14),
      ],
    );
  }
}
