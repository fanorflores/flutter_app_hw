import 'package:flutter/material.dart';
import 'package:flutter_app_hw/pagesNavigationDrawer/HomeDraw.dart';
import 'package:flutter_app_hw/pagesNavigationDrawer/pages/home.dart';
import 'package:flutter_app_hw/pagesNavigationDrawer/pages/settings.dart';
import 'package:flutter_app_hw/pagesNavigationDrawer/pages/bateri.dart';



void main()
{
  runApp(
    new MaterialApp(
      title: "Navigation Drawer",
      home: HomeNav(),
      routes: <String, WidgetBuilder>
      {
        BodyBat.routName:(BuildContext context)=>new BodyBat(),
        BodySet.routName:(BuildContext context)=>new BodySet(),
        BodyHome.routName:(BuildContext context)=>new BodyHome(),

      }
    )
  );
}

