import 'package:flutter/material.dart';
import 'package:portfolio/screens/home/widget/certifications/certifications.dart';
import 'package:portfolio/screens/home/widget/drawer/custom_drawer.dart';
import 'package:portfolio/screens/home/widget/footer/custom_footer.dart';
import 'package:portfolio/screens/home/widget/presentation/presentation.dart';
import 'package:portfolio/screens/home/widget/projects/projects.dart';
import 'package:portfolio/screens/home/widget/skills/skills.dart';
import 'package:portfolio/screens/home/widget/social/social.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../core/responsive/breakpoints.dart';
import '../../widgets/app_bar/custom_app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.itemScrollController});

  final ItemScrollController itemScrollController;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late List<Widget> items;

  final ItemScrollController itemScrollController = ItemScrollController();

  final ItemPositionsListener itemPositionsListener =
      ItemPositionsListener.create();

  @override
  void initState() {
    super.initState();
    items = [
      Presentation(itemScrollController),
      const Projects(),
      const Skills(),
      // const Experience(),
      const Social(),

      const Certifications(),

      const CustomFooter(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constrains) {
        final isToshowDrawer = constrains.maxWidth < Breakpoints.appBar;
        return Scaffold(
          appBar: CustomAppBar(itemScrollController),
          drawer:
              isToshowDrawer ? CustomDrawer(widget.itemScrollController) : null,
          body: ScrollablePositionedList.builder(
            itemCount: items.length,
            itemScrollController: itemScrollController,
            itemPositionsListener: itemPositionsListener,
            itemBuilder: (context, index) => items[index],
          ),
        );
      },
    );
  }
}
