import 'package:flutter/material.dart';

class FooterTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 480,
        child: FittedBox(
          fit: BoxFit.none,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SelectableText(
                'MXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
                style: TextStyle(letterSpacing: 1.2),
              ),
              SelectableText(
                'XXXXXXXXXXXXXXXXXXXXXXX',
                style: TextStyle(letterSpacing: 1.2),
              ),
              SelectableText('XXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'),
              SelectableText('XXXXXXXXXXXXXXXXXXXXXXXXXXXXX'),
              SelectableText('XXXXXXXXXXXXXXXXXXXXXXXXXXX')
            ],
          ),
        ));
  }
}
