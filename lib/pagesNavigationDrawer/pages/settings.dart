import 'package:flutter/material.dart';

void main ()
{
  runApp(
      new MaterialApp(
        title: "Settings app",
        home: BodySet(),
      )
  );
}

class BodySet extends StatelessWidget
{
  static const String routName="/pages/settings.dart";
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Settings"),
      ),
      body: new Container(
          child: new Center(
            child: new Column(
              children: <Widget>[
                new Icon(Icons.settings, size: 40.0, color: Colors.greenAccent,),
              ],
            ),
          )
      )
      ,
    )
    ;
  }

}