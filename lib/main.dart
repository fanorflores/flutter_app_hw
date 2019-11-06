import 'package:flutter/material.dart';

void main()
{
  runApp(
    new MaterialApp(
      title: "Mi primera Aplicación",
      home: MyApp()),
  );

}

class MyApp extends StatelessWidget {
  final double iconSize=40.0;
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Cogiendo forma"),
      ),
      body: new Container(
        child:new Center(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
             new MyCard(
               title: new Text("Ilove NoNi"),
             icon: new Icon(Icons.favorite, size:iconSize),),
              new MyCard(
                title: new Text("Ilove Fanor"),
                icon: new Icon(Icons.thumb_up, size:iconSize),),
              new MyCard(
                title: new Text("Ilove NoNi"),
                icon: new Icon(Icons.queue_music, size:iconSize),),
            ],
          ),
        )
      ),
    );
  }
}

class MyCard extends StatelessWidget{
  final Widget title;
  final Widget icon;
  MyCard({this.title,this.icon});

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: const EdgeInsets.only(bottom: 1.0),
      child: new Card(
        child: new Container(
         padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[this.title,this.icon],
        ),
      ),
    ));
  }

}
