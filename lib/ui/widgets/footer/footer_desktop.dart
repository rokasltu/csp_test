import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FooterDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 20,
        width: Get.width / 1.5,
        child: Container(
          padding: EdgeInsets.only(right: 25),
          child: Wrap(
            alignment: WrapAlignment.end,
            direction: Axis.horizontal,
            runSpacing: 5,
            children: [
              SelectableText(
                'Modernios Informacinės Technologijos, UAB',
                style: TextStyle(letterSpacing: 1.2),
              ),
              SelectableText(
                '| 305640231',
                style: TextStyle(letterSpacing: 1.2),
              ),
              SelectableText(
                '| Smolensko g. 10D-35, LT-03234, Vilnius',
                style: TextStyle(letterSpacing: 1.2),
              ),
              SelectableText(
                '| info@modernit.space',
                style: TextStyle(letterSpacing: 1.2),
              ),
              SelectableText(
                '| +370 682 04909',
                style: TextStyle(
                    color: Color.fromRGBO(40, 36, 137, 1),
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ));
  }
}
