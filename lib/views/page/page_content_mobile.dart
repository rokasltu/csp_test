import 'package:flutter/material.dart';
import 'package:modern_it_homepage/widgets/call_to_action/call_to_action.dart';
import 'package:modern_it_homepage/widgets/page_details/page_details.dart';

class PageContentMobile extends StatelessWidget {
  final String caption;
  final String details;
  const PageContentMobile(this.caption, this.details);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        PageDetails(
          caption: '',
          details: '',
        ),
        SizedBox(
          height: 100,
        ),
        CallToAction(),
      ],
    );
  }
}
