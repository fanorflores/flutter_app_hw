import 'package:flutter/material.dart';

void main ()
{
  runApp(
      new MaterialApp(
        title: "Batería app",
        home: BodyHome(),
      )
  );
}

class BodyHome extends StatelessWidget
{
  static const String routName="/pages/home.dart";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Home"),
      ),
      body: new Container(
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Icon(Icons.home, size: 40.0, color: Colors.yellowAccent,),
              ],
            ),
          )
      )
      ,
    )
      ;
  }

}