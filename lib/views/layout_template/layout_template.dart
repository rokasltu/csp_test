import 'package:flutter/material.dart';
import 'package:modern_it_homepage/constants/logo.dart';
import 'package:modern_it_homepage/routing/route_names.dart';
import 'package:modern_it_homepage/routing/routs.dart';
import 'package:modern_it_homepage/services/navigation_service.dart';
import 'package:modern_it_homepage/widgets/centered_view/centered_view.dart';
import 'package:modern_it_homepage/widgets/navigation_bar/navigation_bar.dart';
import 'package:modern_it_homepage/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../locator.dart';

class LayoutTemplate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
        builder: (context, sizingInformation) => Scaffold(
            drawer:
                sizingInformation.deviceScreenType == DeviceScreenType.mobile
                    ? NavigationDrawer()
                    : null,
            body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(logo_path),
                  fit: BoxFit.none,
                ),
              ),
              child: CenteredView(
                child: Column(
                  children: [
                    NavigationBar(),
                    Expanded(
                      child: Navigator(
                        key: locator<NavigationService>().navigatorKey,
                        onGenerateRoute: generateRoute,
                        initialRoute: HomeRoute,
                      ),
                    )
                  ],
                ),
              ),
            )));
  }
}
