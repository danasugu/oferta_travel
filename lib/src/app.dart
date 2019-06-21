import 'package:flutter/material.dart';


class App extends StatefulWidget {
@override
  State<StatefulWidget> createState() {
     return AppState();
  }
}
class AppState extends State<App> {
  int counter = 0;

  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(backgroundColor: Colors.amber,
            child: Icon(Icons.flight_takeoff, color: Colors.yellow, size: 33.0,),
            elevation: 12.0,
            focusColor: Colors.purple,hoverColor:
            Colors.purpleAccent,
            onPressed: () {
          counter += 1;
          setState(() {

          });
            }),
        bottomNavigationBar: BottomAppBar(
          color:Colors.amber,
          child: Container(height: 50.0,),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        appBar: AppBar(backgroundColor: Colors.amber,elevation: 0.3,
          title: Text('Hai sa vedem ofertele!', style: TextStyle(fontSize: 15.5),),
          centerTitle: true,
        ),
      ),
    );
  }
}
