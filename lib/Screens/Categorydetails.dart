// ignore_for_file: annotate_overrides, non_constant_identifier_names, override_on_non_overriding_member, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:login/Model/Meals.dart';
import 'package:login/Widget/MealItem.dart';

class CatDetail extends StatefulWidget {
final List<Meal> availableMeal;
const CatDetail(this.availableMeal);
  @override
  _CatDetailState createState() => _CatDetailState();
}

class _CatDetailState extends State<CatDetail> {
  @override
  late List<Meal> Display;
  String ?title;
  void didChangeDependencies() {
    var df = ModalRoute.of(context)?.settings.arguments as Map<String, String>;

     title = df["title"];

    String? id = df["id"];

       Display = widget.availableMeal
        .where((element) => element.categories.contains(id))
        .toList();

    super.didChangeDependencies();
  }


  @override
  Widget build(BuildContext context) {
    Remove(mealid){
      setState(() {
        Display.removeWhere((element) => element.id ==mealid);
      });
    }
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(title!),
      ),
      body: ListView.builder(
            itemCount: Display.length,
            itemBuilder: (BuildContext context, int index) {
              return MealItem(
                remove: Remove,
                id: Display[index].id,
                title: Display[index].title,
                duration: Display[index].duration,
                imageUrl: Display[index].imageUrl,
              );
            },
          ),
    );
  }
}
Widget Roow(icon, title) {
  return Row(
    children: [
      Icon(icon),
      SizedBox(
        width: 5,
      ),
      Text("$title min")
    ],
  );
}
