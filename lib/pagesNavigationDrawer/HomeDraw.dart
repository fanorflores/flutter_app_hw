import 'package:flutter/material.dart';

class HomeNav extends StatefulWidget
{
  @override
  _MyHomeNav createState() => new _MyHomeNav();

}

class _MyHomeNav extends State<HomeNav>
{
  Drawer getDrawer(BuildContext context)
  {
    var header = new DrawerHeader(child: new Text("Portadad de Menú"));
    var info = new AboutListTile(
      child: new Text("Esta App es de NoNi"),
      applicationIcon: new Icon(Icons.info),
      icon: new Icon(Icons.info),
      applicationVersion: "v0.0.0",
      applicationName: "NoNi Team Nicaragua",
    );
     ListTile _getItem(Icon icons, String description, String route)
    {
      return new ListTile(
        leading: icons,
        title: new Text(description),
        onTap: ()
        {
          setState(() {
            Navigator.of(context).pushNamed(route);
          });
        },

      );
    }
    ListView listView = new ListView(
      children: <Widget>[
        header,
        _getItem(new Icon(Icons.settings), "Home", "/pages/home.dart"),
        _getItem(new Icon(Icons.home), "Settings", "/pages/settings.dart"),
        _getItem(new Icon(Icons.battery_charging_full), "Batería", "/pages/bateri.dart"),
        info
      ],
    );

     return new Drawer(
       child: listView,
     );
  }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Navigation NoNi"),
      ),
      drawer: getDrawer(context)
    );
  }

}