import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  final bool showBack;
  final bool showMenu;

  const CustomAppBar({this.showBack = false, this.showMenu = true});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        ((showMenu)
            ? Builder(
                builder: (context) => IconButton(
                  padding: EdgeInsets.zero,
                  alignment: Alignment.centerLeft,
                  icon: FaIcon(
                    FontAwesomeIcons.alignLeft,
                    size: 28.0,
                  ),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                ),
              )
            : Text('')),
        ((showBack)
            ? IconButton(
                padding: EdgeInsets.zero,
                alignment: Alignment.centerRight,
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: FaIcon(
                  FontAwesomeIcons.arrowLeft,
                  size: 28.0,
                ),
              )
            : Text('')),
      ],
    );
  }
}
