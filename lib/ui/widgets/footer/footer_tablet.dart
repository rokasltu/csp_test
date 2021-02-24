import 'package:flutter/material.dart';

class FooterTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 480,
        child: FittedBox(
          fit: BoxFit.none,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SelectableText('Address: Smolensko g. 10D-35, LT-03234, Vilnius'),
              SelectableText('email: info<at>modernit.space'),
              SelectableText('mob.: +370 682 04909')
            ],
          ),
        ));
  }
}
