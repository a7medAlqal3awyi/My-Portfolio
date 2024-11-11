import 'package:flutter/material.dart';
import 'package:portfolio/widgets/app_bar/widgets/web_app_bar_title.dart';

import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../core/divider.dart';
import '../../core/themes/app_colors.dart';


class WebAppBar extends StatelessWidget {
  const WebAppBar(
    this.itemScrollController, {
    super.key,
  });

  final ItemScrollController itemScrollController;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0,
      surfaceTintColor: AppColors.transparent,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          WebAppBarTitle(
            title: "Home",
            index: 0,
            itemScrollController: itemScrollController,
          ),
          const AppBarDivider(),
          WebAppBarTitle(
            title: "Projects",
            index: 1,
            itemScrollController: itemScrollController,
          ),
          const AppBarDivider(),
          WebAppBarTitle(
            title: "Skills",
            index: 2,
            itemScrollController: itemScrollController,
          ),
          const AppBarDivider(),


          const AppBarDivider(),
          WebAppBarTitle(
            title: "Social Links",
            index: 3,
            itemScrollController: itemScrollController,
          ),
          const AppBarDivider(),
          WebAppBarTitle(
            title: "Certificates",
            index: 4,
            itemScrollController: itemScrollController,
          ),

        ],
      ),
    );
  }
}
