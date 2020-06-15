import 'package:flutter/material.dart';
import 'package:trailt/homepage.dart';
import 'package:trailt/quizpage.dart';
import 'package:trailt/the_game.dart';
import 'package:trailt/settings.dart';
import 'package:trailt/tabsscreen.dart';


void main()=>runApp(MyHome());

class MyHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(primarySwatch: Colors.blue),
      home: TheHomePage(),
      routes: {
        '/quizpage':(context) => Tabs(),
        '/gamepage':(context) => Game(),
        '/spage':(context) => Settings(),
      },

    );
  }
}
