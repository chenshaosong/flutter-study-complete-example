import 'package:flutter/material.dart';
import 'package:flutter_app/page/ability.dart';
import 'package:flutter_app/page/home.dart';
import 'package:flutter_app/page/mine.dart';
//app tab 配置
List<Map> tabList = [
  {
    "page":HomePage(),
    "item": BottomNavigationBarItem(
      icon: Icon(
        Icons.home,
        color: Colors.black87,
        size: 30.0,
      ),
      activeIcon: Icon(
        Icons.home,
        color: Colors.green,
        size: 30.0,
      ),
      title: Text('首页'),
    )
  },
  {
    "page":AbilityPage(),
    "item": BottomNavigationBarItem(
      icon: Icon(
        Icons.short_text,
        color: Colors.black87,
        size: 30.0,
      ),
      activeIcon: Icon(
        Icons.short_text,
        color: Colors.green,
        size: 30.0,
      ),
      title: Text('功能'),
    )
  },
  {
    "page":MinePage(),
    "item": BottomNavigationBarItem(
      icon: Icon(
        Icons.person,
        color: Colors.black87,
        size: 30.0,
      ),
      activeIcon: Icon(
        Icons.person,
        color: Colors.green,
        size: 30.0,
      ),
      title: Text('我的'),
    )
  }
];