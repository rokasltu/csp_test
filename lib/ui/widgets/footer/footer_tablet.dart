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
                'Modernios Informacinės Technologijos, UAB',
                style: TextStyle(letterSpacing: 1.2),
              ),
              SelectableText(
                'Code: 305640231',
                style: TextStyle(letterSpacing: 1.2),
              ),
              SelectableText('Address: Smolensko g. 10D-35, LT-03234, Vilnius'),
              SelectableText('email: info@modernit.space'),
              SelectableText('mob.: +370 682 04909')
            ],
          ),
        ));
  }
}
