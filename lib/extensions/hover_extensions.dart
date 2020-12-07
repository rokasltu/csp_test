import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'dart:html' as html;



extension HoverExtensions on Widget {
  // Get a regerence to the body of the view
  static final appContainer =
  html.window.document.getElementById('app-container');
  Widget get showCursorOnHover {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: this,

      onHover: (event) {
      },
      onExit: (event) {

      },
    );
  }
}