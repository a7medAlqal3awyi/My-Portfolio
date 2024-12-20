import 'package:flutter/material.dart';

import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../../core/mixins/scroll_to_mixin.dart';
import '../../../core/themes/app_colors.dart';
import '../../../core/themes/text_styles.dart';


class WebAppBarTitle extends StatelessWidget with ScrollToMixin {
  const WebAppBarTitle({
    super.key,
    required this.index,
    required this.title,
    required this.itemScrollController,
  });

  final String title;
  final int index;
  final ItemScrollController itemScrollController;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Material(
        color: AppColors.transparent,
        borderRadius: BorderRadius.circular(16),
        clipBehavior: Clip.antiAlias,
        child: InkWell(
          splashColor: AppColors.primary,
          overlayColor: WidgetStateProperty.all(
            AppColors.primary.withOpacity(0.25),
          ),
          onTap: () => scrollTo(index, itemScrollController),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: AppTextStyles.appBar(title),
          ),
        ),
      ),
    );
  }
}
