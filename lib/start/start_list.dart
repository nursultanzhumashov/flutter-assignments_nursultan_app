import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        color: Color(0xff007E78),
        // shadowColor: Colors.white,
        elevation: 4,
        margin: EdgeInsets.symmetric(vertical: 10),
        child: ListTile(
          onTap: () => Navigator.pushNamed(context, route),
          leading: leading,
          title: Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          subtitle: Text(
            subtitle,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
          trailing: Icon(
            Icons.keyboard_arrow_right,
          ),
        ),
      ),
    );
  }
}
