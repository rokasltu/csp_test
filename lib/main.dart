import 'package:cool_web/ui/styles/app_colors.dart';
import 'package:cool_web/ui/widgets/layout_template/layout_template.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:csp/csp.dart';


import 'locator.dart';



void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'CSP testas',
      theme: ThemeData(
          textTheme: Theme.of(context)
              .textTheme
              .apply(fontFamily: 'Open Sans', bodyColor: primaryColor)),
      home: LayoutTemplate(),
      color: primaryColor,
    );
  }
}


