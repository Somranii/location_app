import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  @override

  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var locationt = "";

  @override
  void getposition() async {
    var  position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    var lastlocation = await Geolocator.getLastKnownPosition();
    print(lastlocation);

    locationt = "$position.latitude,$position.longitude";
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("l mohem ikhdm"),
        centerTitle: true,
      ),
      body :
     Column(
        children : [ Container(
        child:  Text ("Inty tawa fi $locationt "),
    ),
      FlatButton(
      onPressed: () {
      getposition();
      },
        color: Colors.cyan,
        child : Text("INZEL HNE "),
      ), ])
    );
  }




}
