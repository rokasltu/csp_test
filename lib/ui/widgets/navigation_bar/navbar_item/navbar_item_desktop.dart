import 'package:flutter/material.dart';
import 'package:modern_it_homepage/datamodels/navbar_item_model.dart';
import 'package:modern_it_homepage/locator.dart';
import 'package:modern_it_homepage/services/navigation_service.dart';

class NavBarItemTabletDesktop extends StatelessWidget {
  final NavBarItemModel model;

  NavBarItemTabletDesktop({@required this.model});

  @override
  Widget build(
    BuildContext context,
  ) {
    return ElevatedButton(
      onPressed: () {
        locator<NavigationService>().navigateTo(model.navigationPath);
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
        child: Text(model.title, style: TextStyle(fontSize: 18)),
      ),
    );
  }
}
