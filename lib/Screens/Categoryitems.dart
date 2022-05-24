// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:login/Screens/Categorydetails.dart';
import 'package:login/Services/dummy_data.dart';
import 'package:login/Widget/Drawer.dart';
import 'package:login/Widget/Item.dart';

class CategoryItems extends StatelessWidget {
  const CategoryItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Meal App"),
      ),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: 3 / 2,
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20),
        padding:
            EdgeInsets.symmetric(vertical: height / 40, horizontal: width / 30),
        children: DUMMY_CATEGORIES
            .map((e) => Item(title: e.title, color: e.color, id: e.id))
            .toList(),
      ),
      drawer: CustomDrawer()
    );
  }
}
