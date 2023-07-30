import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);



  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        iconSize: 40,
        icon: Icon(Icons.menu),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
      ),
      actions: [
        IconButton(
          icon: const CircleAvatar(),
          onPressed: () {},
          iconSize: 40,
        ),
      ],
    );
  }
}
