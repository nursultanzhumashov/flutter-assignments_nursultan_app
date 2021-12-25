import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  final String title;
  final bool centerTitle;
  final bool automaticallyImplyLeading;
  final Widget leading;
  final List<Widget> actions;

  CustomAppBar(
    this.title, {
    Key key,
    this.centerTitle = true,
    this.automaticallyImplyLeading = false,
    this.leading,
    this.actions,
  })  : preferredSize = const Size.fromHeight(50.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(
        color: Colors.black,
      ),
      leading: leading,
      title: Text(
        title,
        style: const TextStyle(color: Colors.black),
      ),
      actions: actions,
      automaticallyImplyLeading: automaticallyImplyLeading,
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: centerTitle,
    );
  }
}
