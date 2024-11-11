import 'package:flutter/material.dart';

import 'app_colors.dart';


class AppTheme {
  static ThemeData get theme => ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.background,
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppColors.primary,
    ),
    colorScheme: ThemeData().colorScheme.copyWith(
      primary: AppColors.primary,
      secondary: AppColors.primary,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.black,
      elevation: 0,
      iconTheme: IconThemeData(color: AppColors.primary),
    ),
    // fontFamily: AppDatas.montserrat,
  );
}
