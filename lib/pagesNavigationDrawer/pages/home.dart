import 'package:flutter/material.dart';
import 'package:flutter_app_hw/StateFulWidget.dart';

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
                MyButtonSnack(),
              ],
            ),
          )
      )
      ,
    )
      ;
  }

}

class MyButtonSnack extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return new RaisedButton(
          child: new Text("Ver Snack Bar"),
          onPressed:(){
            Scaffold.of(context).showSnackBar(
              new SnackBar(
                content: new Text("Seguro que quiere cambiar esto?"),
                duration: new Duration(seconds: 5),
                action: new SnackBarAction(label: "Clic para hacerlo", onPressed: (){

                    Navigator.of(context).pushNamed("/pages/settings.dart");

                }),
              )
            );
          } );
  }

}