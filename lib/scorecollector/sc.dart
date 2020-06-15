import 'package:flutter/material.dart';

class SC extends StatelessWidget {
  var score;
  final title;
  SC(this.score,this.title){}



  @override
  Widget build(BuildContext context) {
    return Container(child: Text(score),);
  }
}

