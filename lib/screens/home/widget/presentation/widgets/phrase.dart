import 'package:flutter/material.dart';

import '../../../../../core/themes/text_styles.dart';


class Phrase extends StatelessWidget {
  const Phrase({super.key});

  @override
  Widget build(BuildContext context) {
    const codeText = "Code";

    return Stack(
      children: [
        SelectableText(
          "Deep Code Way Code",
          style: AppTextStyles.phrase,
        ),
        const SelectableText.rich(
          TextSpan(
            children: [
              TextSpan(
                text: " Deep ",
                style: AppTextStyles.phrasePrimary,
              ),
              TextSpan(
                text: codeText,
                style: AppTextStyles.phraseWhite,
              ),
              TextSpan(
                text: " way ",
                style: AppTextStyles.phrasePrimary,
              ),
              TextSpan(
                text: codeText,
                style: AppTextStyles.phraseWhite,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
