import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modern_it_homepage/services/routing/route_names.dart';
import 'package:modern_it_homepage/ui/styles/common_names.dart';

import 'package:modern_it_homepage/ui/widgets/navigation_bar/navbar_item/navbar_item.dart';
import 'navbar_logo.dart';

class NavigationBarDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          NavBarLogo(),
          Container(
            width: Get.width / 2,
            padding: EdgeInsets.only(right: 25),
            child: Wrap(
              alignment: WrapAlignment.end,
              direction: Axis.horizontal,
              runSpacing: 5,
              children: [
                NavBarItem(homeCaption, HomeRoute),
                SizedBox(width: 20),
                NavBarItem(whatDoWeDoCaption, WhatWeDoRoute),
                SizedBox(width: 20),
                NavBarItem(howDoWeDoButtonCaption, HowWeDoToute),
                SizedBox(width: 20),
                NavBarItem(aboutCaption, AboutRoute),
                SizedBox(width: 20),
                NavBarItem(contactUsCaption, ContactUsRoute),
                SizedBox(width: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
