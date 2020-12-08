import 'package:flutter/material.dart';
import 'package:modern_it_homepage/locator.dart';
import 'package:modern_it_homepage/services/navigation_service.dart';
import 'package:modern_it_homepage/services/routing/route_names.dart';
import 'package:modern_it_homepage/services/routing/routs.dart';
import 'package:modern_it_homepage/ui/styles/logo.dart';
import 'package:modern_it_homepage/ui/widgets/navigation_bar/navigation_bar.dart';
import 'package:modern_it_homepage/ui/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'package:modern_it_homepage/ui/widgets/layout_template/centered_view.dart';

class LayoutTemplateBlurred extends StatelessWidget {
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
                  colorFilter: ColorFilter.mode(Colors.black87, BlendMode.colorBurn),
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
