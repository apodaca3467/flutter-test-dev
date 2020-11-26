import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Dev Test',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(title: 'Flutter Dev Test'),
    );
  }
}

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: ListView(
          children: <Widget>[
            tarjetas(
                "https://media-cdn.tripadvisor.com/media/photo-s/08/e6/df/49/mr-pampas-do-brasil-ensenada.jpg",
                "Pampas Do Brasil",
                false),
            tarjetas(
                "https://www.race-dezert.com/home/wp-content/uploads/2016/11/baja-1000-taco-stand-ensenada-6854.jpg",
                "Tacos Angelito",
                true),
            tarjetas(
                "https://10619-2.s.cdn12.com/rests/original/322_508588766.jpg",
                "Victors Pizza",
                true),
            tarjetas(
                "https://menu.sluurpy.com/immagini/locali/thumbs/5012602.jpg",
                "Caffe Tomás",
                false),
            tarjetas(
                "https://media-cdn.tripadvisor.com/media/photo-s/0c/18/30/21/starbucks.jpg",
                "Starbucks MacroPlaza del Mar",
                true),
          ],
        ));
    // );
  }
}

Widget tarjetas(String pURL, String pNombre, bool pEstado) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15.0),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ClipRRect(
          child: Image.network(pURL),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15.0), topRight: Radius.circular(15.0)),
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                pNombre,
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                pEstado ? "Abieto" : "Cerrado",
                style: TextStyle(color: pEstado ? Colors.green : Colors.red),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
