// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables


import 'package:flutter/material.dart';
import 'package:login/Screens/Categorydetails.dart';
import 'package:login/Services/dummy_data.dart';

class MealItem extends StatelessWidget {
  final id;
  final duration;
  final imageUrl;
  final title;
  final remove;

  MealItem({
    this.remove,
    this.id,
    this.title,
    this.imageUrl,
    this.duration,
  });
  @override
  Widget build(BuildContext context) {

    return InkWell(
        borderRadius: BorderRadius.circular(30),
        onTap: () {
          Navigator.of(context).pushNamed("Dmeal", arguments: id).then((value){
            if(value!=null) remove(value);
          }
          );
        },
        child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            margin: EdgeInsets.only(top: 5, bottom: 10, right: 5, left: 5),
            child: Container(
                padding: EdgeInsets.only(bottom: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.lightGreen.withOpacity(.3),
                ),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        ClipRRect(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15),
                                topRight: Radius.circular(15)),
                            child: Image.network(
                              imageUrl,
                              fit: BoxFit.cover,
                              height: 250,
                              width: double.infinity,
                            )),
                        Positioned(
                          bottom: 30,
                          right: 1,
                          child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              width: 150,
                              color: Colors.black38,
                              child: Text(
                                title,
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              )),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Roow(Icons.lock_clock, duration),
                        Roow(Icons.card_giftcard, ""),
                        Roow(Icons.monetization_on, "id"),
                      ],
                    )
                  ],
                ))));
  }
}
