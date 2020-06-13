import 'package:flutter/material.dart';
import 'package:trailt/homepage.dart';
import 'package:trailt/quizpage.dart';
import 'package:trailt/the_game.dart';

void main()=>runApp(MyHome());

class MyHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(primarySwatch: Colors.blue),
      home: TheHomePage(),
      routes: {
        '/quizpage':(context) => Quiz(),
        '/gamepage':(context) => Game(),
      },

    );
  }
}
