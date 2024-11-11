import 'dart:async';
import 'package:flutter/material.dart';
import 'package:portfolio/screens/home/home_screen.dart';
import 'package:portfolio/screens/splash/widget/animated_image.dart';
import 'package:portfolio/screens/splash/widget/animated_loading_text.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  ItemScrollController itemScrollController = ItemScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) =>
                 HomeScreen(itemScrollController: itemScrollController),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF000515),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AnimatedImageContainer(
              width: 100,
              height: 100,
            ),
            SizedBox(
              height: 20,
            ),
            AnimatedLoadingText(),
          ],
        ),
      ),
    );
  }
}
