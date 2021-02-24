import 'package:flutter/material.dart';
import 'package:modern_it_homepage/services/routing/route_names.dart';
import 'package:modern_it_homepage/ui/styles/app_colors.dart';
import 'package:modern_it_homepage/ui/styles/common_names.dart';
import 'package:modern_it_homepage/ui/widgets/navigation_drawer/drawer_item.dart';
import 'package:modern_it_homepage/ui/widgets/navigation_drawer/navigation_drawer_header.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      decoration: BoxDecoration(
        color: bodyColor,
        boxShadow: [
          BoxShadow(color: Colors.black12, blurRadius: 16),
        ],
      ),
      child: Column(
        children: [
          NavigationDrawerHeader(),
          DrawerItem(aboutCaption, AboutRoute),
          DrawerItem(whatDoWeDoCaption, WhatWeDoRoute),
          DrawerItem(clientsCaption, ClientsRoute),
        ],
      ),
    );
  }
}
