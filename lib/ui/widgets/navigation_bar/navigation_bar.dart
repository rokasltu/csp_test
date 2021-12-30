import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'navigation_bar_desktop.dart';
import 'navigation_bar_mobile.dart';
import 'navigation_bar_tablet.dart';

class CustomNavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavigationBarMobile(),
      tablet: NavigationBarTablet(),
      desktop: NavigationBarDesktop(),
    );
  }
}
