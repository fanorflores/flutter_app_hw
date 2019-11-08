import 'package:flutter/material.dart';

void main ()
{
  runApp(
      new MaterialApp(
        title: "Batería app",
        home: BodyBat(),
      )
  );
}

class BodyBat extends StatelessWidget
{
  static const String routName="/pages/bateri.dart";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Batería"),
      ),
      body: new Container(
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Icon(Icons.battery_charging_full, size: 40.0, color: Colors.redAccent,),
              ],
            ),
          )
      )
      ,
    )
    ;
  }

}