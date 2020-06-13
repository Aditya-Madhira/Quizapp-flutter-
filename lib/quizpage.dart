import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Quiz extends StatelessWidget {

  final  quiz_op=[
    'Witcher ','Avengers','Pokemon','General','Computers','Hollywood','Animals','Nature','Anime','Music'];


  @override
  Widget build(BuildContext context) {


    final routeargs=ModalRoute.of(context).settings.arguments as Map<String,String>;
    var theheight_2 = MediaQuery.of(context).size.height;
    var thewidth_2 = MediaQuery.of(context).size.width;
    final username=routeargs['username'];
    var newusername=username[0].toUpperCase() + username.substring(1);


    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz Page"),
        centerTitle: true,
      ),
      body: Container(
        height: theheight_2,
        child: Stack(
          children: [Image.asset("assets/quizs.jpg",height: theheight_2,fit: BoxFit.fill,),
            Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Text("Hey,There ${newusername}",style: TextStyle(fontSize: 28,color: Colors.green),),
                ],
              ),
              SizedBox(height: 25,),
              Container(child: Text("Please choose one",style: TextStyle(fontSize: 30,color: Colors.deepOrange),),),
              Opacity(opacity: 0.63,child: Row(mainAxisAlignment: MainAxisAlignment.end,children: [ButtonTheme(minWidth: 20.0,child: RaisedButton(child: Text("Note",style: TextStyle(color: Colors.white),),onPressed: ()=>shownote(context),)),])),
              SizedBox(height: 103,),
              Container(
                height: theheight_2 * 0.57,

                width: thewidth_2,

                  child: Opacity(
                    opacity: 0.6,
                    child: ListView.builder(
                      itemBuilder: (ctx,index)
                      {

                        return InkWell(
                          onTap: ()
                          {
                            Navigator.of(context).pushNamed('/gamepage',arguments: {'thetitle':quiz_op[index]});
                          },
                          child: Container(
                            decoration: BoxDecoration(border: Border.all(color: Colors.black26,width: 3,style: BorderStyle.solid),color: Colors.red[500]),
                            child: Card(

                              color: Colors.blue,
                              elevation: 80,
                              shadowColor: Colors.amber,

                              child: Text(quiz_op[index],textAlign: TextAlign.center,style: TextStyle(fontSize: 30,),),
                            ),
                          ),
                        );

                      },
                      itemCount: quiz_op.length,
                    ),
                  ),

              )
            ],
          ),
      ],
        ),
      ),
    );
}
}
void shownote(context) {
  // flutter defined function
  showDialog(
    context: context,
    builder: (BuildContext context) {
      // return object of type Dialog
      return AlertDialog(
        title: new Text("Note"),
        content: new Text("You can scroll the topics"),
        actions: <Widget>[
          // usually buttons at the bottom of the dialog
          new FlatButton(
            child: new Text("Close"),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}


