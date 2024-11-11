import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/core/shared/app_urls.dart';
import 'package:url_launcher/url_launcher.dart';

class DownloadButton extends StatelessWidget {
  const DownloadButton({super.key, this.text, this.onTap, this.icon});

  final String? text;

  final void Function()? onTap;

  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ??
          () {
            launchUrl(Uri.parse(AppUrls.resume));
          },
      child: Container(
        width: 200,
        alignment: Alignment.center,
        padding:
            const EdgeInsets.symmetric(vertical: 20 / 1.5, horizontal: 20 * 2),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          boxShadow: const [
            BoxShadow(color: Colors.blue, offset: Offset(0, -1), blurRadius: 5),
            BoxShadow(color: Colors.red, offset: Offset(0, 1), blurRadius: 5),
          ],
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Colors.pink,
                Colors.blue.shade900,
              ]),
        ),
        child: Row(
          children: [
            Text(
              text ?? 'My Resume',
              style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  color: Colors.white,
                  letterSpacing: 1.2,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              width: 15,
            ),
            Icon(
              icon ?? FontAwesomeIcons.arrowUpRightFromSquare,
              color: Colors.white70,
              size: 15,
            )
          ],
        ),
      ),
    );
  }
}
