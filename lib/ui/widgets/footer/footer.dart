import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'footrer_desktop.dart';
import 'footrer_mobile.dart';
import 'footrer_tablet.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: FooterMobile(),
      tablet: FooterTablet(),
      desktop: FooterDesktop(),
    );
  }
}
