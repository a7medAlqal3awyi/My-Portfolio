import 'package:flutter/material.dart';
import 'package:portfolio/widgets/app_bar/web_app_bar.dart';

import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../core/responsive/breakpoints.dart';
import 'mobile_app_bar.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar(
    this.itemScrollController, {
    super.key,
  });

  final ItemScrollController itemScrollController;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return constraints.maxWidth < Breakpoints.appBar
            ? const MobileAppBar()
            : WebAppBar(itemScrollController);
      },
    );
  }
}
