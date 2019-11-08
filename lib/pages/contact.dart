import 'package:flutter/material.dart';


class Contacts extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Icon(Icons.contacts,size: 170.0,color:Colors.greenAccent,),
            new Text("Tercer Tab")
          ],
        ),
      ),
    );
  }

}