import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function qchange;
  final String theanswer;
  Answer(this.theanswer,this.qchange){}
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 3.0,vertical: 29.0),
      width: double.infinity,
      decoration: BoxDecoration(border: Border.all(
        color: Colors.black,
        width: 2.0,
      )),
      child: RaisedButton(child: Text(theanswer),onPressed: qchange,color: Colors.amber,)
    );
  }
}
