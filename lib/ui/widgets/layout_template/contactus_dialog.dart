import 'package:flutter/material.dart';
import 'package:get/get.dart';


import '../../../controllers/contactus_controller.dart';

class ContactusDialog extends GetWidget<ContactusController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(children: [
        TextFormField(
          onChanged: (value) => controller.from = value,
          decoration: InputDecoration(
              labelText: 'from: ', labelStyle: TextStyle(color: Colors.white)),
        ),
        TextFormField(
          maxLines: 5,
          onChanged: (value) => controller.message = value,
          decoration: InputDecoration(
              labelText: 'message: ',
              labelStyle: TextStyle(color: Colors.white)),
        ),
      ]),
    );
  }
}
