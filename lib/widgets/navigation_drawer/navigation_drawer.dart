import 'package:flutter/material.dart';
import 'package:modern_it_homepage/constants/app_colors.dart';
import 'package:modern_it_homepage/constants/common_names.dart';
import 'package:modern_it_homepage/routing/route_names.dart';
import 'package:modern_it_homepage/widgets/navigation_drawer/drawer_item.dart';
import 'package:modern_it_homepage/widgets/navigation_drawer/navigation_drawer_header.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: bodyColor,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 16),
        ],
      ),
      child: Column(
        children: [
          NavigationDrawerHeader(),
          DrawerItem(aboutCaption, Icons.details, AboutRoute),
          DrawerItem(whatDoWeDoCaption, Icons.help, WhatWeDoRoute),
          DrawerItem(clientsCaption, Icons.face, ClientsRoute),
        ],
      ),
    );
  }
}
