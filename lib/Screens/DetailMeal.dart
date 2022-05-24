// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:login/Model/Meals.dart';
import 'package:login/Services/Data.dart';
import 'package:login/Services/dummy_data.dart';

class Dmeal extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
   final  ID= ModalRoute.of(context)?.settings.arguments as String;
  var DummyAF=  DUMMY_MEALS.firstWhere((element) => element.id== ID);

    return Scaffold(
        appBar: AppBar(
          title: Text(DummyAF.title),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            child: Container(
                margin: EdgeInsets.all(10),
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15)),
                        child: Image.network(
                          DummyAF.imageUrl,
                          fit: BoxFit.cover,
                          height: 250,
                          width: double.infinity,
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "ingredients",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 250,
                      width: 300,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color: Colors.red.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(20)),
                      padding: EdgeInsets.all(15),
                      child: ListView.builder(
                        itemCount: DummyAF.ingredients.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                              margin: EdgeInsets.all(10),
                              color: Colors.blue,
                              child: Padding(
                                padding: EdgeInsets.all(10),
                                child: Text(DummyAF.ingredients[index]),
                              ));
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Steps",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 250,
                      width: 400,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          color: Colors.red.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(20)),
                      padding: EdgeInsets.all(15),
                      child: ListView.builder(
                        itemCount: DummyAF.steps.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
                            leading: CircleAvatar(
                              child: Text(
                                "${index + 1}",
                                style: TextStyle(
                                    fontSize: 17, color: Colors.black),
                              ),
                              backgroundColor: Colors.red.withOpacity(0.8),
                            ),
                            title: Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.orange.withOpacity(0.5)),
                                child: Text(DummyAF.steps[index])),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)),
                          );
                        },
                      ),
                    ),

                  ],
                ))),
        floatingActionButton: FloatingActionButton(onPressed: () {
          Navigator.of(context).pop(ID);
        },child: Icon(Icons.delete),)

      ,
    );
  }
}