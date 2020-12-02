import 'package:flutter/material.dart';
import 'package:modern_it_homepage/constants/common_names.dart';
import 'package:modern_it_homepage/routing/route_names.dart';
import 'package:modern_it_homepage/views/page/page_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(PageContentView('', ''));
    case AboutRoute:
      return _getPageRoute(PageContentView(aboutCaption, aboutDetail));
    case ClientsRoute:
      return _getPageRoute(PageContentView(clientsCaption, clientsDetail));
    case WhatWeDoRoute:
      return _getPageRoute(
          PageContentView(whatDoWeDoCaption, whatDoWeDoDetail));
    case ContactUsRoute:
      return _getPageRoute(PageContentView(contactUsCaption, contactUsDetail));
    default:
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
