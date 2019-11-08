import 'package:flutter/material.dart';
class Video extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Icon(Icons.videocam,size: 170.0,color:Colors.pinkAccent,),
            new Text("Segundo Tab")

          ],
        ),
      ),
    );
  }

}