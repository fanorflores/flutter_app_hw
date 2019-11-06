import 'package:flutter/material.dart';

void main()
{
  runApp(
    new MaterialApp(
      title: "Mi primera Aplicación",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Primer NoNi"),
        ),
        body: new Container(
          child: new Center(
                child: new Text("Hola Mundo NoNi")
          ),
        ),
      )
    )
  );
}