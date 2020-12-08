import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import '../../../main.dart';
import 'page_content_desktop.dart';
import 'page_content_mobile.dart';

class PageContentView extends StatelessWidget {
  final String title;
  final String content;
  const PageContentView(this.title, this.content);

  @override
  Widget build(BuildContext context) {
    if( (title == 'Who are we') || (title == 'What do we do') || (title == 'Our clients')){
      runApp(BlurrBackgroundImage());}
    else {runApp(MyApp());}

    return ScreenTypeLayout(
      mobile: PageContentMobile(title, content),
      desktop: PageContentDesktop(title, content),
    );
  }
}
