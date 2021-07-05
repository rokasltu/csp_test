import 'package:flutter/material.dart';
import 'package:modern_it_homepage/controllers/contactus_controller.dart';
import 'package:modern_it_homepage/ui/styles/text_styles.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:get/get.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'contactus_dialog.dart';

class PageDetails extends StatelessWidget {
  final String caption;
  final String details;
  final Widget child;
  const PageDetails({this.caption, this.details, this.child});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        var textAlignment =
            sizingInformation.deviceScreenType == DeviceScreenType.desktop
                ? TextAlign.left
                : TextAlign.center;

        return Container(
          width: 600,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  caption,
                  style: titleTextStyle(sizingInformation.deviceScreenType),
                  textAlign: textAlignment,
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  details,
                  style:
                      descriptionTextStyle(sizingInformation.deviceScreenType),
                  textAlign: textAlignment,
                ),
                SizedBox(
                  height: 30,
                ),
                child != null
                    ? Column(children: [
                        child,
                        SizedBox(height: 30),
                      ])
                    : Container(height: 0, width: 0),
                ElevatedButton(
                  onPressed: () {
                    final contactusController = Get.put(ContactusController());
                    Get.defaultDialog(
                      backgroundColor: Colors.black38,
                      title: 'Contact us',
                      content: ContactusDialog(),
                      textConfirm: 'Send',
                      confirmTextColor: Colors.white,
                      onConfirm: () => sendMessage(contactusController.from,
                          contactusController.message),
                      onCancel: () => Get.back(),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.white,
                    primary: Colors.transparent,
                    padding: EdgeInsets.all(0),
                    shape: RoundedRectangleBorder(
                      borderRadius: new BorderRadius.circular(18.0),
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      gradient: LinearGradient(
                        colors: <Color>[
                          Colors.black38,
                          Colors.black26,
                          Colors.white38,
                        ],
                      ),
                    ),
                    padding: const EdgeInsets.fromLTRB(18, 12, 18, 12),
                    child: Text('Contact us', style: TextStyle(fontSize: 18)),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void sendMessage(String from, String message) async {
    final subject = 'Hello from Modern IT webpage!';
    await FirebaseFirestore.instance.collection('mail').doc().set({
      'to': 'info@modernit.space',
      'message': {
        'from': from,
        'reply-to': from,
        'subject': subject,
        'html': 'From: ' + from + '.</br>' + message,
      },
    });
    Get.back();
  }
}
