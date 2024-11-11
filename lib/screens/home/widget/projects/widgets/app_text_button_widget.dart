import 'package:flutter/material.dart';

import '../../../../../core/shared/app_urls.dart';
import '../../../../../core/utils/url_launcher.dart';
import '../../../../../core/widgets/buttons/app_text_button.dart';


class AppTextButtonWidget extends StatelessWidget {
  const AppTextButtonWidget({super.key, this.tex, this.onPressed});
  final String? tex;
  final void Function()? onPressed;


  @override
  Widget build(BuildContext context) {
    return AppTextButton(
      text: tex??"See Projects",
      onPressed: onPressed??() => LaunchUrls().launchURL(AppUrls.gitHub),
    );
  }
}
