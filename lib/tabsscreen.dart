import 'package:flutter/material.dart';
import 'package:trailt/quizpage.dart';
import 'package:trailt/history.dart';

class Tabs extends StatefulWidget {

  @override
  _TabsState createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  List<Map<String,Object>> pages=[
    {'page':Quiz(),'title':'Quiz Page'},
    {'page':Hist(),'title':'History'}
  ];
  int pindex=0;

  void tabpchange(int index)
  {
    setState(() {
      pindex=index;
    });

  }
  @override
  Widget build(BuildContext context) {
    var h_2=MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(title: Text(pages[pindex]['title']),),
      drawer: Drawer(
        child: Column(
          children: [
            Opacity(
              opacity: 0.34,
              child: Container(
                height: h_2 * 0.26,
                color: Colors.blueAccent,
                width: double.infinity,
                child: Text("Hey,so where to now?",style: TextStyle(color: Colors.black.withOpacity(0.98),fontSize: 60),textAlign: TextAlign.center,),
              ),
            ),
            SizedBox(height: 20,),
            ListTile(
              leading: Icon(Icons.settings),title: Text("Settings"),
              onTap: (){
                Navigator.of(context).pushNamed('/spage');
              },
            )
          ],

        )
      ),


      body: pages[pindex]['page'],
      bottomNavigationBar:
         BottomNavigationBar(
           backgroundColor: Colors.deepOrange.withOpacity(0.5),

          unselectedItemColor: Colors.black,

          currentIndex: pindex,
          onTap: tabpchange,
          items: [

            BottomNavigationBarItem(
              icon: Icon(Icons.announcement,),
              title: Text('Topics'),

            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.history,),
              title: Text('Score History'),

            )
          ],
        ),

    );
  }
}
