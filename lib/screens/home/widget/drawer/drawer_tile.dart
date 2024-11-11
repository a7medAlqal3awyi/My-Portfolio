import 'package:flutter/material.dart';



import '../../../../core/themes/app_colors.dart';

class DrawerTile extends StatelessWidget  {
  const DrawerTile({
    super.key,
    required this.title,
    required this.subTitle,
  });

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.background,
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:  12,vertical: 6),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.white
            )),
            const SizedBox(width: 16),
            Text(subTitle,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  color: Colors.grey
                ))
          ],
        ),
      ),
    );
  }
}
