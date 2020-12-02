import 'package:flutter/material.dart';
import 'package:modern_it_homepage/constants/common_names.dart';
import 'package:modern_it_homepage/routing/route_names.dart';

import 'navbar_item.dart';
import 'navbar_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NavBarLogo(),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                NavBarItem(aboutCaption, AboutRoute),
                NavBarItem(whatDoWeDoCaption, WhatWeDoRoute),
                NavBarItem(clientsCaption, ClientsRoute),
              ],
            )
          ],
        ));
  }
}
