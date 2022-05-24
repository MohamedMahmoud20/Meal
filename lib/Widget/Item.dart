// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  Color color;
  String title;
  String id;

  Item(
      {required this.title,
      required this.color,
      required this.id,});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        borderRadius: BorderRadius.circular(20),
        onTap: () {
          Navigator.of(context).pushNamed("Details", arguments: {
            "title": title,
            "id": id,
          });
        },
        child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: color,
                gradient: LinearGradient(colors: [
                  color.withOpacity(0.8),
                  color.withOpacity(0.7),
                  color.withOpacity(0.9),
                  color
                ], begin: Alignment.topCenter, end: Alignment.bottomRight)),
            child: Center(
                child: Text(
              title,
              style: TextStyle(fontSize: 25, color: Colors.black),
            ))));
  }
}
