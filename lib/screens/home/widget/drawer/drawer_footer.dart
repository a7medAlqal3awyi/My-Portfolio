import 'package:flutter/material.dart';


import '../../../../core/themes/text_styles.dart';

class DrawerFooter extends StatelessWidget {
  const DrawerFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 0, 20),
      child: SizedBox(
        height: 30,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
             Image.asset(
              "assets/developer.png",
              height: 24,
            ),
            const SizedBox(width: 16),
            const SelectableText(
              "deep Code",
              textAlign: TextAlign.center,
              style: AppTextStyles.socialTitle,
            ),
          ],
        ),
      ),
    );
  }
}
