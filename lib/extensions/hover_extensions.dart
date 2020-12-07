import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';

import 'dart:html' as html;

extension HoverExtensions on Widget {
  // Get a regerence to the body of the view
  static final appContainer =
  html.window.document.getElementById('app-container');
  Widget get showCursorOnHover {
    return MouseRegion(
      child: this,
      // When the mouse enters the widget set the cursor to pointer
      onHover: (event) {
        print ('haver');
       appContainer.style.cursor = 'pointer';
      },
      // When it exits set it back to default
      onExit: (event) {
        print('unhover');
        appContainer.style.cursor = 'default';
      },
    );
  }
}