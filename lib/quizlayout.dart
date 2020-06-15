import 'package:flutter/material.dart';
import 'package:trailt/answer.dart';
import 'package:trailt/result.dart';
import 'package:trailt/scorecollector/sc.dart';



class TheGame extends StatefulWidget {
  final mytitle;
  final queslist;
  TheGame(this.mytitle,this.queslist);
  @override
  _TheGameState createState() => _TheGameState();
}

class _TheGameState extends State<TheGame> {

  int quesindex=0;
  int totalscore=0;

  void reset(var savescore,var title)
  {



    setState(() {


      quesindex=0;
      totalscore=0;



    });
  }

  void changeques(int score)
  {
    totalscore+=score;
    setState(() {
      quesindex=quesindex+1;
    });
  }
  List myl=[];


  @override
  void initState() {
    myl.add(widget.mytitle);


    // TODO: implement initState
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return quesindex < 5 ?
    Scaffold(
      appBar:  AppBar(title: Text('${myl[0]} Quiz'),),
      body: Container(
          width: double.infinity,
          child: Column(
            children: [
              Text(widget.queslist[quesindex]['ques'],style: TextStyle(fontSize: 20),),
              ...(widget.queslist[quesindex]['answers'] as List<Map<String,Object>>).map((ans){
                return Answer(ans['text'],() => changeques(ans['score']));

              })


            ],
          )

      ),
    )
        :
    Result(totalscore,reset,myl);
  }
}

