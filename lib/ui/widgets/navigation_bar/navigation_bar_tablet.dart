import 'package:flutter/material.dart';
import 'package:modern_it_homepage/services/routing/route_names.dart';
import 'package:modern_it_homepage/ui/styles/common_names.dart';

import 'package:modern_it_homepage/ui/widgets/navigation_bar/navbar_item/navbar_item.dart';
import 'navbar_logo.dart';

class NavigationBarTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        child: FittedBox(
          fit: BoxFit.fitWidth,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavBarLogo(),
              SizedBox(width: 20),
              NavBarItem(homeCaption, HomeRoute),
              SizedBox(width: 20),
              NavBarItem(whatDoWeDoCaption, WhatWeDoRoute),
              SizedBox(width: 20),
              NavBarItem(howDoWeDoButtonCaption, HowWeDoRoute),
              SizedBox(width: 20),
              NavBarItem(aboutCaption, AboutRoute),
              SizedBox(width: 20),
              NavBarItem(contactUsCaption, ContactUsRoute),
              SizedBox(width: 20),
            ],
          ),
        ));
  }
}
