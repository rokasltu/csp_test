import 'package:flutter/material.dart';
import 'package:modern_it_homepage/datamodels/navbar_item_model.dart';
import 'package:provider_architecture/provider_architecture.dart';

class NavBarItemMobile extends ProviderWidget<NavBarItemModel> {
  @override
  Widget build(BuildContext context, NavBarItemModel model) {
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
