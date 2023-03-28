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
                'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXAAA',
                style: TextStyle(letterSpacing: 1.2),
              ),
              SelectableText(
                'XXXXXXXXXXXXX',
                style: TextStyle(letterSpacing: 1.2),
              ),
              SelectableText(
                'XXXXXXXXXXXXXXXXXXXXXXX',
                style: TextStyle(letterSpacing: 1.2),
              ),
              SelectableText(
                'XXXXXXXXXXXXXXXXXXXXXXXXXXXX',
                style: TextStyle(letterSpacing: 1.2),
              ),
              SelectableText(
                'XXXXXXXXXXXXXXXXXXXXXXXXXXX',
                style: TextStyle(
                    color: Color.fromRGBO(40, 36, 137, 1),
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
        ));
  }
}
