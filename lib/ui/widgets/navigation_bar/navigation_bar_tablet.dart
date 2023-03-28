import 'package:flutter/material.dart';

import '../../../services/routing/route_names.dart';
import '../../styles/common_names.dart';
import 'navbar_item/navbar_item.dart';
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
