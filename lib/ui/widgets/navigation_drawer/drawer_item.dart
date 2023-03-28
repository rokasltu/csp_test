import 'package:flutter/material.dart';

import '../navigation_bar/navbar_item/navbar_item.dart';


class DrawerItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  const DrawerItem(this.title, this.navigationPath);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, top: 60),
      child: Row(
        children: [
          SizedBox(width: 5),
          NavBarItem(title, navigationPath),
        ],
      ),
    );
  }
}
