import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nursultan_assigmants/app/screens/icon_color.dart';

class HomeList extends StatelessWidget {
  const HomeList(
      {Key key,
      this.leading,
      this.title,
      this.subtitle,
      this.route,
      this.color})
      : super(key: key);

  final Icon leading;
  final String title;
  final String subtitle;
  final String route;
  final String color;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        //shadowColor: Colors.blue,
        color: Color(0xff0E1621),
        elevation: 4,
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: ListTile(
          onTap: () => Navigator.pushNamed(context, route),
          leading: leading,
          title: Text(
            title,
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
          subtitle: Text(
            subtitle,
            style: const TextStyle(color: Colors.blue, fontSize: 16),
          ),
          trailing: const Icon(
            Icons.keyboard_arrow_right,
            color: IconColor.iconcolorflitter,
          ),
        ),
      ),
    );
  }
}
