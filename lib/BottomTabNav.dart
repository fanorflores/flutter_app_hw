import 'package:flutter/material.dart';
import 'package:flutter_app_hw/pages/home.dart';
import 'package:flutter_app_hw/pages/contact.dart';
import 'package:flutter_app_hw/pages/video.dart';
void main()
{
  runApp(
    new MaterialApp(
      title: "Boottom Nav For NoNi",
      home: MyBottomTabNav(),
    )
  );
}

class MyBottomTabNav extends StatefulWidget
{
  @override
  _MyBottomTanNavState createState() => new _MyBottomTanNavState();
}

class _MyBottomTanNavState extends State<MyBottomTabNav> with SingleTickerProviderStateMixin
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
        title: new Text("Bottom Nava para NoNi"),
      ),
      bottomNavigationBar: new Material(
        color: Colors.blueAccent,
        child: new TabBar(
            tabs: <Tab>[
                new Tab(
                    icon: new Icon(Icons.home)
                ),
                new Tab(
                    icon: new Icon(Icons.videocam)
                ),
                new Tab(
                    icon: new Icon(Icons.contacts)
                )
              ],
        labelColor: Colors.yellowAccent,
        unselectedLabelColor: Colors.greenAccent,
        controller: tabController ),
        ),
      body: new TabBarView(
          children: <Widget>[
            new Home(),
            new Video(),
            new Contacts()
          ],controller: tabController,),

    );
  }

}