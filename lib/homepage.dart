

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TheHomePage extends StatelessWidget {
  final nameinp=TextEditingController();
  void routechanger(BuildContext context)
  {
    Navigator.of(context).pushNamed('/quizpage',arguments: {'username':nameinp.text});

  }
  @override
  Widget build(BuildContext context) {
    var theheight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("Test App"),
        centerTitle: true,
      ),
      body: Container(
        height: theheight,
        child: SingleChildScrollView(
          child: Stack(
            children: [Image.asset("assets/homeimage.jpg",fit: BoxFit.fill,height: theheight,),SingleChildScrollView(
              child: Opacity(
                opacity: 0.71,
                child: Container(

                  margin: EdgeInsets.symmetric(horizontal: 60, vertical: 286),
                  child: Card(
                    child: Column(
                      children: [
                        TextField(
                          decoration: InputDecoration(labelText: "enter name"),controller: nameinp,
                        ),

                        RaisedButton(
                          child: Text("submit"),
                          onPressed: () => routechanger(context),
                        ),
                      ],
                    ),
                  ),

                ),
              ),
            ),
    ],
          ),
        ),
      ),
    );
  }
}

// user defined function

