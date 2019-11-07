import 'package:flutter/material.dart';

void main()
{
  runApp(
    new MaterialApp(
      title: "Login",
      home: MyLogin(),
    )
  );
}

class MyLogin extends StatefulWidget
{
  @override
  _MyLoginBuilder createState() => new _MyLoginBuilder();

}
class _MyLoginBuilder extends State<MyLogin>
{
  void onChangedMail(String mail)
  {
   print(mail);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Login"),
        backgroundColor: Colors.redAccent,
      ),
      body: new Container(
        child:
        new Center(
          child: new Column(
            children: <Widget>[
              new TextField(
                decoration: new InputDecoration(hintText: "user@domain.com"),
                onSubmitted: (String mail){onChangedMail(mail);},
              )
            ],
          )
        ),
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


