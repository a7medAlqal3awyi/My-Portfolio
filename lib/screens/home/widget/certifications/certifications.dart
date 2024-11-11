import 'package:flutter/material.dart';

import '../../../../core/responsive/breakpoints.dart';
import '../../../../core/shared/app_keys.dart';
import 'certifications_mobile.dart';
import 'certifications_web.dart';

class Certifications extends StatelessWidget {
  const Certifications(
     {
    super.key,
  });

  // final ItemScrollController itemScrollController;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      key: AppKeys.certifications,
      builder: (context, constraints) {
        return constraints.maxWidth < Breakpoints.certification
            ?  const CertificationsMobile()
            :  const CertificationsWeb();
      },
    );
  }
}
