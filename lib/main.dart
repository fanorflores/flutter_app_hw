import 'package:flutter/material.dart';
import 'package:flutter_app_hw/StateFulWidget.dart';

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
  final TextStyle textStyle= new  TextStyle(color: Colors.greenAccent,fontSize: 30.0,fontFamily: "Roboto");
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
               title: new Text("Ilove NoNi",style:  textStyle,),
             icon: new Icon(Icons.favorite, size:iconSize, color: Colors.blue ,),),
              new MyCard(
                title: new Text("Ilove Fanor",style:  textStyle),
                icon: new Icon(Icons.thumb_up, size:iconSize, color: Colors.red ,),),
              new MyCard(
                title: new Text("Ilove NoNi",style:  textStyle),
                icon: new Icon(Icons.queue_music, size:iconSize, color: Colors.redAccent ,),),
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
