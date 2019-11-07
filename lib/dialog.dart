import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(
    new MaterialApp(
      title: "Alert Dialog",
      home: MyAlert(),
    )
  );
}

class MyAlert extends StatefulWidget
{
  @override
  _MyAlertState createState() => new _MyAlertState();

}
enum DialogAction
{
  yes,no
}
class _MyAlertState extends State<MyAlert>
{
  String _txtvalue="";
  void _onPressedButton()
  {
    AlertDialog alertDialog = new AlertDialog(
      content: new Text(_txtvalue),
      actions: <Widget>[
        new FlatButton(
            onPressed:(){ _alertResult(DialogAction.yes);},
            child: new Text("SI")),
        new FlatButton(
            onPressed:(){ _alertResult(DialogAction.no);},
            child: new Text("NO"))
      ],

    );
    
  showDialog(context: context,  child: alertDialog);
  setState(() {
    _txtvalue="";
  });
  }

  void _alertResult(DialogAction action)
  {
    print("Accion: $action");


  }
  void _onChaged(String value)
  {
    _txtvalue=value;
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
          title: new Text("Alert Dialog >NoNi"),
          backgroundColor: Colors.blueAccent),
      body: new Container(
        child: new Center(
          child: new Column(
            children: <Widget>[
              new TextField(
                decoration: new InputDecoration(hintText: "Ingrese su peso"),
                controller: new TextEditingController(text: _txtvalue),
                onChanged: (String txtvalue){_onChaged(txtvalue);},
              ),
              new RaisedButton(
                child: new Text("Ver Alerta",style: new TextStyle(color: Colors.white),),
                color: Colors.blueAccent,
                onPressed: (){_onPressedButton();},
              )

            ],
          ),
        ),
      ),
    );
  }

}
