import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../../locator.dart';
import '../../../services/navigation_service.dart';
import '../../../services/routing/route_names.dart';
import '../../../services/routing/routs.dart';
import '../../styles/logo.dart';
import '../footer/footer.dart';
import '../navigation_bar/navigation_bar.dart';
import 'centered_view.dart';

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
                  image: AssetImage(background_img_path),
                  fit: BoxFit.cover,
                ),
              ),
              child: CenteredView(
                child: Column(
                  children: [
                    CustomNavigationBar(),
                    Expanded(
                      child: Navigator(
                        key: locator<NavigationService>().navigatorKey,
                        onGenerateRoute: generateRoute,
                        initialRoute: HomeRoute,
                      ),
                    ),
                    Footer(),
                  ],
                ),
              ),
            )));
  }
}
