import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Icon(Icons.home,size: 170.0,color:Colors.blueAccent,),
            new Text("Primer Tab")
          ],
        ),
      ),
    );
  }

}
