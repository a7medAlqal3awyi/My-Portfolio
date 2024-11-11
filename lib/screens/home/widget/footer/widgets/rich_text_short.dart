import 'package:flutter/material.dart';

import '../../../../../core/themes/text_styles.dart';
import '../../../../../core/utils/date_time_utils.dart';


class RichTextShort extends StatelessWidget {
  const RichTextShort({
    super.key,
    required this.textAlign,
  });

  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    var year = DateTimeUtils.getYear(DateTime.now());

    return SelectableText.rich(
      textAlign: textAlign,
      TextSpan(
        children: [
          TextSpan(
            text: '$year - @',
            style: AppTextStyles.phraseWhite,
          ),
          const TextSpan(
            text: "a7medalqalawyi",
            style: AppTextStyles.phrasePrimary,
          ),
          const TextSpan(
            text: ".",
            style: AppTextStyles.phraseWhite,
          ),
        ],
      ),
    );
  }
}
