import 'package:flutter/material.dart';

import '../../../../core/responsive/breakpoints.dart';
import '../../../../core/shared/app_keys.dart';
import 'footer_mobile.dart';
import 'footer_web.dart';
class CustomFooter extends StatelessWidget {
  const CustomFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      key: AppKeys.customFooter,
      builder: (context, constraints) {
        return constraints.maxWidth < Breakpoints.footer
            ? const FooterMobile()
            : const FooterWeb();
      },
    );
  }
}
