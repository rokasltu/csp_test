import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'footer_desktop.dart';
import 'footer_mobile.dart';
import 'footer_tablet.dart';

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
