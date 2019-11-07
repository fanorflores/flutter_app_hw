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
  String valorTextIn="";
  final TextEditingController controller = new TextEditingController();

  void onSubmited(String mail)
  {
   setState(() {
     valorTextIn+=mail+"\n";
     controller.text="";
   });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Login"),
        backgroundColor: Colors.redAccent,
      ),
      body: new Container(
        padding: EdgeInsets.all(20.0),
        child:
        new Center(
          child: new Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              new TextField(
                decoration: new InputDecoration(hintText: "user@domain.com"),
                controller: controller ,
                onSubmitted: (String mail){onSubmited(mail);},
              ),
              new Text(valorTextIn)
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


