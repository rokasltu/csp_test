import 'package:flutter/material.dart';

import '../../../locator.dart';
import '../../../services/navigation_service.dart';
import '../../../services/routing/route_names.dart';
import '../../styles/logo.dart';


class NavBarLogo extends StatelessWidget {
  const NavBarLogo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.red.withOpacity(0),
        child: InkWell(
          onTap: () {
            locator<NavigationService>().navigateTo(HomeRoute);
          },
          child: Container(
            child: Image.asset(
              logo_path,
              fit: BoxFit.fitWidth,
            ),
            width: navbar_logo_width,
          ),
        ));
  }
}
