import 'package:flutter/material.dart';

import '../../styles/app_colors.dart';
import 'navbar_logo.dart';


class NavigationBarMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(Icons.menu),
            color: primaryColor,
            onPressed: () {
              return Scaffold.of(context).openDrawer();
            },
          ),
          NavBarLogo(),
        ],
      ),
    );
  }
}
