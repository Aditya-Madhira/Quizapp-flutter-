import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trailt/history.dart';


class Result extends StatelessWidget {
  int myscore;
  final Function reseter;
  final List myl;
  Result(this.myscore,this.reseter,this.myl){}


  String get rphrase
  {
    var op;
    if(myscore==0)
      op="Clean Bowled";
    else if(myscore==1)
      op="Could do better";
    else if(myscore==2)
      op="Could hustle";
    else if(myscore==3)
      op="Almost";
    else if(myscore==4)
      op="Good";
    else if(myscore==5)
      op="Genius";

    return op;
  }
  Color get mycolor
  {
    Color f;
    if(myscore==0)
      f=Colors.black;
    else if(myscore==1)
      f=Colors.red;
    else if(myscore==2)
      f=Colors.deepOrange;
    else if(myscore==3)
      f=Colors.yellow;
    else if(myscore==4)
      f=Colors.blueAccent;
    else if(myscore==5)
      f=Colors.green;

    return f;
  }



  @override
  Widget build(BuildContext context) {
    var thetitle=myl[0];
    return Scaffold(
      appBar: AppBar(title: Text('Score'),),
      body: Column(
        children: [
          Container(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("${myscore} / 5",style: TextStyle(fontSize: 120,color:mycolor),),

                  ],
                ),
                Text(rphrase,style: TextStyle(fontSize: 50,fontStyle: FontStyle.italic),),
              ],
            ),
          ),
          SizedBox(height: 270,),
          RaisedButton(child: Text('reset'),onPressed:() => reseter,),
        ],
      ),
    );
  }
}
