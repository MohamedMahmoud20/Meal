// ignore_for_file: non_constant_identifier_names, prefer_const_constructors, avoid_types_as_parameter_names, must_be_immutable, file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:login/Widget/Drawer.dart';

class Filter extends StatefulWidget {
  Function onpress;


  Map Filters;
  Filter(this.onpress, this.Filters);


  @override
  _FilterState createState() => _FilterState();
}

class _FilterState extends State<Filter> {
  bool GlutenFree = false;
  bool Vegan = false;
  bool Vegetarian = false;
  bool LactoseFree = false;
  @override
  void initState() {
     GlutenFree = widget.Filters["isGlutenFree"];
     Vegan = widget.Filters["isVegan"];
     Vegetarian = widget.Filters["isVegetarian"];
     LactoseFree = widget.Filters["isLactoseFree"];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed:(){
          setState(() {
          final  Selectuser= {
             "isGlutenFree" :GlutenFree,
             "isVegan" : Vegan,
             "isVegetarian" :Vegetarian,
             "isLactoseFree" : LactoseFree,
            };
            widget.onpress(Selectuser);
          });
    }

          ,  icon: Icon(Icons.save))],
        title: Text("Filters"),
        centerTitle: true,
      ),
      drawer: CustomDrawer(),
      body: Column(
        children: [
          Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                "Adjust Filters",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )),
          SizedBox(
            height: 20,
          ),
          Switch(Vegan, (value) {
            setState(() {
              Vegan = value;
            });
          }, "Vegan"),
          Switch(GlutenFree, (value) {
            setState(() {
              GlutenFree = value;
            });
          }, "GlutenFree"),
          Switch(LactoseFree, (value) {
            setState(() {
              LactoseFree = value;
            });
          }, "LactoseFree"),
          Switch(Vegetarian, (value) {
            setState(() {
              Vegetarian = value;
            });
          }, "Vegetarian"),
        ],
      ),
    );
  }
}

Widget Switch(Filter, Set, text) {
  return SwitchListTile(
    activeColor: Colors.green,
    value: Filter,
    onChanged: Set,
    title: Text(
      text,
      style: TextStyle(fontSize: 18),
    ),
  );
}
