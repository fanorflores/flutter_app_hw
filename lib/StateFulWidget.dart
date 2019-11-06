import 'package:flutter/material.dart';

 void main()
 {
   runApp(
     new MaterialApp(
       title: "Ejemplo StateFulWidget",
       home: MyButton(),
     )
   );
 }

class MyButton extends StatefulWidget{
  @override
 _MyButtonSate createState() => new _MyButtonSate();
}

class _MyButtonSate extends State<MyButton>
{
  String flutterText="";
  int flag=0;
  List<String> collection =["NoNi", "Es la", "Mejor","APP"];
  void onPressButton()
  {
     setState(() {
       flutterText=collection[flag];
       flag=flag<3 ? flag+1 :0;
     });
  }
  @override
  Widget build(
      BuildContext context) {
       return new Scaffold(
         appBar: new AppBar(
           title: new Text("Stateful Widget"),
           backgroundColor: Colors.orangeAccent,
         ),
         body: new Container(
           child: new Center(
           child: new Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               new Text(flutterText, style: new TextStyle(fontSize: 40.0),),
               new Padding(padding: new EdgeInsets.all(10.0)),
               new RaisedButton(
                 child: new Text("Actualizar", style: new TextStyle(color: Colors.white),),
                   color: Colors.blueAccent,
                   onPressed: onPressButton,
               )

             ],
           ), )
         ),
       );
  }


}
