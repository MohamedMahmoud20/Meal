// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class radiodata {
  final int id;
  final String name;
  final String type;
  final String imageUrl;
  final String soundurl;

  radiodata(
      {required this.id,
      required this.name,
      required this.type,
      required this.imageUrl,
      required this.soundurl});

  void play_stop() {}
}

List<radiodata> homeradios =[
  radiodata(
      id: 1,
      name: 'rotana',
      type: 'music',
      imageUrl:
          'https://yt3.ggpht.com/L3QycmqXuDQUF10OKsjcDHBUKNZDbB3-DdRcSfz1flWS-6bodAbFaBFnU84uwKbOFLgfVsAGPQ=s900-c-k-c0x00ffffff-no-rj',
      soundurl: 'not now'),
  radiodata(
      id: 2,
      name: 'Ngom FM',
      type: 'music',
      imageUrl:
          'https://yt3.ggpht.com/ytc/AKedOLQU0z4fzu0HCBnae6TElCSwSTyDipjISSjmNIRPWg=s900-c-k-c0x00ffffff-no-rj',
      soundurl: 'not now'),
  radiodata(
      id: 3,
      name: 'BBC',
      type: 'News',
      imageUrl:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/3/32/BBC_World_News_2019.svg/800px-BBC_World_News_2019.svg.png',
      soundurl: 'not now'),
  radiodata(
      id: 4,
      name: 'ON Sport',
      type: 'Sports',
      imageUrl:
          'https://1.bp.blogspot.com/-dO_eIwDlU8A/YPJu39uW10I/AAAAAAAAIzA/ddoc4aN4iVsUGrptKqIvrvAc_7FByFd6QCLcBGAsYHQ/s550/on-sport-fm.jpg',
      soundurl: 'not now'),
  radiodata(
      id: 5,
      name: 'ِِِAljazeera',
      type: 'news',
      imageUrl: 'https://cdn-profiles.tunein.com/s273144/images/logod.png',
      soundurl: 'not now'),
  radiodata(
      id: 6,
      name: 'Quraan Egypt',
      type: 'Quraan',
      imageUrl:
          'https://mytuner.global.ssl.fastly.net/media/tvos_radios/c5UM5Rxx3R.png',
      soundurl: 'not now'),
  radiodata(
      id: 7,
      name: 'Mega FM',
      type: 'Music',
      imageUrl:
          'https://pbs.twimg.com/profile_images/1220431110691336192/L5SmNd4r_400x400.jpg',
      soundurl: 'not now'),
  radiodata(
      id: 8,
      name: 'اذاعه البرنامج العام',
      type: 'News',
      imageUrl:
          'https://mytuner.global.ssl.fastly.net/media/tvos_radios/3wx3nj4raevz.jpg',
      soundurl: 'not now'),
];

List<radiodata> favoriteradios = [];

List<radiodata> Music = [];

List<radiodata> sports = [];

List<radiodata> Quraan = [];
List<radiodata> news = [];

Widget radiostation(radiodata info) => ListTile(
    title: Text(
      info.name,
      style: TextStyle(fontSize: 20),
    ),
    subtitle: Text(info.type),
    trailing: IconButton(
      onPressed: () {},
      icon: Icon(Icons.favorite_border),
    ),
    leading: ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Image(
        image: NetworkImage(
          info.imageUrl,
        ),
        height: 60,
        width: 60,
        fit: BoxFit.cover,
      ),
    ));
