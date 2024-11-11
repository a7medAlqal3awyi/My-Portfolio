import 'package:flutter/material.dart';

import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';


import 'drawer_tile.dart';

class DrawerItems extends StatelessWidget {
  const DrawerItems(
    this.itemScrollController, {
    super.key,
  });

  final ItemScrollController itemScrollController;

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          DrawerTile(
            title: "Contact",
            subTitle: "01025241470",
          ),
          SizedBox(height: 10,),
          DrawerTile(
            title: "Email",
            subTitle: "a7medalqalawyi@gmail.com",
          ),
          SizedBox(height: 10,),


          DrawerTile(
            title: "Github",
            subTitle: "@a7medAlqal3awyi",
          ),
          SizedBox(height: 10,),


          DrawerTile(
            title: "LinkedIn",
            subTitle: "@ahmedkhaledalkalawyi",
          ),

        ],
      ),
    );
  }
}
