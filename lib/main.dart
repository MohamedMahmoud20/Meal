import 'package:flutter/material.dart';
import './Model/Meals.dart';
import './Screens/DetailMeal.dart';
import './Screens/Filter.dart';
import 'Screens/Categorydetails.dart';
import 'Screens/Categoryitems.dart';
import 'Services/dummy_data.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Meal> availableMeal = DUMMY_MEALS;

  Map<String , bool> Filters = {
    "isGlutenFree": false,
    "isVegan": false,
    "isVegetarian": false,
    "isLactoseFree": false,
  };

  void Onpress(NewFilter) {
    setState(() {
      Filters = NewFilter;
      availableMeal.where((element) {
        if (Filters["isGlutenFree"]== true && element.isGlutenFree==false) {
          return false;
        }
        if (Filters["isVegan"]== true&& element.isVegan==false ) {
          return false;
        }
        if (Filters["isVegetarian"]== true && element.isVegetarian==false) {
          return false;
        }
        if (Filters["isLactoseFree"]== true &&
            element.isLactoseFree) {
          return false;
        }
        return true;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CategoryItems(),
      routes: {
        "main": (context) => CategoryItems(),
        "Details": (context) => CatDetail(availableMeal),
        "Dmeal": (context) => Dmeal(),
        "filter": (context) => Filter(Onpress,Filters),
      },
    );
  }
}
