import 'package:flutter/material.dart';
import 'package:flutter_app_hw/pages/home.dart';
import 'package:flutter_app_hw/pages/video.dart';
import 'package:flutter_app_hw/pages/contact.dart';

void main()
{
  runApp(
      new MaterialApp(
        title: "Tabs",
        home: MyTabsNoNi(),
      )
  );

}

class MyTabsNoNi extends StatefulWidget
{

  @override
  _MytabsNoNiState createState() => new _MytabsNoNiState();

}

class _MytabsNoNiState extends State<MyTabsNoNi> with SingleTickerProviderStateMixin
{
  TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController= new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Tabs de NoNi",textDirection: TextDirection.ltr,),
          backgroundColor: Colors.redAccent,
          bottom: 
            new TabBar(tabs: <Widget>[
              new Tab(
                icon: new Icon(Icons.home),

              ),
              new Tab(
                icon: new Icon(Icons.videocam),
              ),
              new Tab(
                icon: new Icon(Icons.contacts)
              ),

            ], controller: tabController,)
        ),
      body: new TabBarView(
          children: <Widget>[
            new Home(),

            new Video(),
            new Contacts()
          ],
        controller: tabController,
      ),
    );
  }

}

