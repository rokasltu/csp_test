import 'package:flutter/material.dart';
import 'package:modern_it_homepage/widgets/navigation_bar/navbar_logo.dart';
import 'package:modern_it_homepage/widgets/navigation_drawer/navigation_drawer.dart';

class NavigationBarMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              NavigationDrawer();
            },
          ),
          NavBarLogo(),
        ],
      ),
    );
  }
}
