import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'models/oferte_model.dart';
import 'dart:convert';
import 'widgets/oferta_list.dart';

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<App> {
  int counter = 0;
  List<OferteModel> oferta = [];

  void fetchOferta() async {

    counter ++;
    var response = await get('https://jsonplaceholder.typicode.com/photos/$counter');
    var oferteModel = OferteModel.fromJson(json.decode(response.body));

    setState(() {
      oferta.add(oferteModel);
    });

  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: OferteList(oferta),
        floatingActionButton: FloatingActionButton(
            backgroundColor: Colors.amber,
            child: Icon(
              Icons.flight_takeoff,
              color: Colors.yellow,
              size: 33.0,
            ),
            elevation: 12.0,
            focusColor: Colors.purple,
            hoverColor: Colors.purpleAccent,
            onPressed: fetchOferta,
        ),

//        onPressed: fetchOferta(); apar ofertele automat fara sa mai apesi pe buton

        bottomNavigationBar: BottomAppBar(
          color: Colors.amber,
          child: Container(
            height: 50.0,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        appBar: AppBar(
          backgroundColor: Colors.amber,
          elevation: 0.3,
          title: Text(
            'Hai sa vedem ofertele!',
            style: TextStyle(fontSize: 15.5),
          ),
          centerTitle: true,
        ),
      ),
    );
  }
}
