import 'package:flutter/material.dart';
import 'package:portfolio/screens/splash/splash_screen.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import 'core/themes/app_theme.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});
  final itemScrollController = ItemScrollController();

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Ahmed Khaled Alkalawyi',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.theme,

      home:  const SplashView()
      //HomeScreen(itemScrollController: itemScrollController,),
    );
  }
}
