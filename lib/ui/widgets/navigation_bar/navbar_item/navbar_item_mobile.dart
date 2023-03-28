import 'package:flutter/material.dart';


import '../../../../datamodels/navbar_item_model.dart';
class NavBarItemMobile extends StatelessWidget {
  final NavBarItemModel model;

  NavBarItemMobile({@required this.model});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5, top: 1),
      child: Row(
        children: <Widget>[
          Icon(model.iconData),
          Text(
            model.title,
            style: TextStyle(fontSize: 18),
          )
        ],
      ),
    );
  }
}
