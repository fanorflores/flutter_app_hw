import 'package:flutter/material.dart';

void main()
{
  runApp(
    new MaterialApp(
      title: "Bienvenida",
      home: new FirstScreen()
    )
  );
}
class FirstScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Bienvenido a NoNi"),
      ),
      body: new Center(
        child: new RaisedButton(
            child: new Text("Mostrar Login", style: new TextStyle(color: Colors.pinkAccent),) ,
            onPressed: (){
              Navigator.push(context,
              new MaterialPageRoute(builder: (context)=> new SecondScreen())
              );
            }),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Esto sería el Login"),
      ),
      body: new Center(
        child: new RaisedButton(
            child: new Text("Volver ", style: new TextStyle(color: Colors.pinkAccent),) ,
            onPressed: (){
              Navigator.pop(context);
            }),
      ),
    );
  }
}