import 'package:flutter/material.dart';

import '../../../services/routing/route_names.dart';
import '../../styles/app_colors.dart';
import '../../styles/common_names.dart';
import 'drawer_item.dart';
import 'navigation_drawer_header.dart';


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
          DrawerItem(homeCaption, HomeRoute),
          DrawerItem(whatDoWeDoCaption, WhatWeDoRoute),
          DrawerItem(howDoWeDoButtonCaption, HowWeDoRoute),
          DrawerItem(aboutCaption, AboutRoute),
          DrawerItem(contactUsCaption, ContactUsRoute),
        ],
      ),
    );
  }
}
