import 'package:flutter/material.dart';
import 'package:modern_it_homepage/ui/styles/common_names.dart';
import 'package:modern_it_homepage/ui/widgets/layout_template/page_details.dart';

import 'route_names.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(PageDetails(caption: '', details: ''));
    case AboutRoute:
      return _getPageRoute(
          PageDetails(caption: aboutCaption, details: aboutDetail));
    case HowWeDoRoute:
      return _getPageRoute(
          PageDetails(caption: howDoWeDoCaption, details: howWeDoDetail));
    case WhatWeDoRoute:
      return _getPageRoute(
          PageDetails(caption: whatDoWeDoCaption, details: whatDoWeDoDetail));
    case ContactUsRoute:
      return _getPageRoute(
          PageDetails(caption: contactUsCaption, details: contactUsDetail));
    default:
      return _getPageRoute(PageDetails(caption: '', details: ''));
  }
}

PageRoute _getPageRoute(Widget child) {
  return _FadeRoute(
    child: child,
  );
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  _FadeRoute({this.child})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
