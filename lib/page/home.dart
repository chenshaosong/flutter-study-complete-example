import 'package:flutter/material.dart';
import 'package:flutter_app/provider/globalProvider/globalProvider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return _homePage();
  }
}

// ignore: camel_case_types
class _homePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('首页'),
        centerTitle: true,
      ),
      body: Container(
        width: 750,
        decoration: BoxDecoration(color: Theme.of(context).backgroundColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text('左滑可以出现抽屉'),
            Text('下列是联动数据'),
            Consumer(
              builder: (BuildContext context, Counter counterProvider,
                  Widget child) {
                return Text('${counterProvider.count}');
              },
            )
          ],
        ),
      ),
    );
  }
}
