import 'package:flutter/material.dart';

class FooterDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SelectableText(
            'Address: Smolensko g. 10D-35, LT-03234, Vilnius',
            style: TextStyle(letterSpacing: 1.2),
          ),
          SelectableText(
            'email: info@modernit.space',
            style: TextStyle(letterSpacing: 1.2),
          ),
          SelectableText(
            'mob.: +370 682 04909',
            style: TextStyle(
                color: Color.fromRGBO(40, 36, 137, 1),
                fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
