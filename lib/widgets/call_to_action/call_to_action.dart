import 'package:flutter/material.dart';
import 'package:modern_it_homepage/constants/common_names.dart';
import 'package:modern_it_homepage/extensions/hover_extensions.dart';
import 'package:modern_it_homepage/widgets/call_to_action/call_to_action_mobile.dart';
import 'package:modern_it_homepage/widgets/call_to_action/call_to_action_tablet.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CallToAction extends StatelessWidget {
  CallToAction();

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: CallToActionMobile(contactUsCaption),
      tablet: CallToActionTablet(contactUsCaption),
    ).showCursorOnHover;
  }
}
