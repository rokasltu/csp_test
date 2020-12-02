import 'package:flutter/material.dart';
import 'package:modern_it_homepage/views/layout_template/layout_template.dart';

import 'constants/app_colors.dart';
import 'locator.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Modern IT',
      theme: ThemeData(
          scaffoldBackgroundColor: scaffoldBackgroundColor,
          textTheme: Theme.of(context)
              .textTheme
              .apply(fontFamily: 'Open Sans', bodyColor: primaryColor)),
      home: LayoutTemplate(),
    );
  }
}
