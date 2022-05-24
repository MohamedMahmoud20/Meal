// ignore_for_file: prefer_const_constructors, file_names

import 'package:flutter/material.dart';
class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 120,
              width: double.infinity,
              color: Colors.orange,
            ),
            ListTile(
              onTap: () => Navigator.of(context).pushReplacementNamed("main"),
              leading: Icon(Icons.filter),
              title: Text(
                "Meals",
                style: TextStyle(fontSize: 21),
              ),
            ),
            ListTile(
              onTap: () => Navigator.of(context).pushNamed("filter"),
              leading: Icon(Icons.filter),
              title: Text(
                "Filters",
                style: TextStyle(fontSize: 21),
              ),
            ),
          ],
        ));
  }
}
