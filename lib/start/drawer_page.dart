import 'package:flutter/material.dart';

class DrawerPage extends StatelessWidget {
  const DrawerPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text('Developer'),
        ),
        ListTile(
          title: const Text('Nursultan Jumawov'),
          onTap: () {},
        ),
        ListTile(
          title: const Text('Item 2'),
          onTap: () {},
        ),
      ],
    );
  }
}
