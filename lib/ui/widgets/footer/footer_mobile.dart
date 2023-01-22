import 'package:flutter/material.dart';

class FooterMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 480,
        child: FittedBox(
          fit: BoxFit.none,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SelectableText(
                'XXXXXXXXXXXXXXXXXXXXXXXXXX',
                style: TextStyle(letterSpacing: 1.2),
              ),
              SelectableText(
                'XXXXXXXXXXXXXXXXXXXXXXXX',
                style: TextStyle(letterSpacing: 1.2),
              ),
              SelectableText('XXXXXXXXXXXXXXXXXXXXXXXXXXX'),
              SelectableText('XXXXXXXXXXXXXXXXXXXXXXXX'),
              SelectableText('XXXXXXXXXXXXXXXXXXXXXXXXX')
            ],
          ),
        ));
  }
}
