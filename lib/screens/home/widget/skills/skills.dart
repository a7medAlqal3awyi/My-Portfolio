import 'package:flutter/material.dart';
import 'package:portfolio/screens/home/widget/projects/projects_mobile.dart';
import 'package:portfolio/screens/home/widget/projects/projects_web.dart';
import 'package:portfolio/screens/home/widget/skills/skills_mobile.dart';
import 'package:portfolio/screens/home/widget/skills/skills_web.dart';

import '../../../../core/responsive/breakpoints.dart';
import '../../../../core/shared/app_keys.dart';


class Skills extends StatelessWidget {
  const Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      key: AppKeys.projects,
      builder: (context, constraints) {
        return constraints.maxWidth < Breakpoints.social
            ? const SkillMobile()
            : const SkillsWeb();
      },
    );
  }
}