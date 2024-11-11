import 'package:flutter/material.dart';

import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../../../core/platform_info/widgets/platform_info_widget.dart';
import '../../../../core/themes/app_colors.dart';
import '../../../../core/widgets/dividers/custom_divider.dart';
import 'custom_drawer_header.dart';
import 'drawer_footer.dart';
import 'drawer_items.dart';
import 'footer.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer(
    this.itemScrollController, {
    super.key,
  });

  final ItemScrollController itemScrollController;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.horizontal(
        right: Radius.circular(50),
      ),
      child: Drawer(
        backgroundColor: AppColors.background,
        surfaceTintColor: AppColors.transparent,
        child: SafeArea(
          child: Column(
            children: [
              const CustomDrawerHeader(),
              const CustomDivider(.5, AppColors.primaryDark),
              const SizedBox(height: 20,),
              Expanded(
                child: DrawerItems(itemScrollController),
              ),
              const DrawerFooter(),
              const Align(
                alignment: Alignment.centerLeft,
                child: PlatformInfoWidget(
                  padding: EdgeInsets.only(
                    bottom: 20,
                    left: 20,
                  ),
                ),
              ),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
