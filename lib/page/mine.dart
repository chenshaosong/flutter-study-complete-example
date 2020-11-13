import 'package:flutter/material.dart';
import 'package:flutter_app/provider/globalProvider/globalProvider.dart';
import 'package:flutter_app/provider/globalProvider/themeProvider.dart';
import 'package:provider/provider.dart';

class MinePage extends StatefulWidget{
  @override
  State<MinePage> createState() {
    // TODO: implement createState
    return _minePage();
  }
}

// ignore: camel_case_types
class _minePage extends State<MinePage>{
  void clickNow(){
    Provider.of<Counter>(context,listen: false).increment();
    print('打印');
  }
  void changeTheme(BuildContext context,int num){
    Provider.of<ThemeColor>(context,listen: false).setTheme(num);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('我的'),
        centerTitle: true,
      ),
      body: Container(
        width: 750,
        decoration:BoxDecoration(
            color: Theme.of(context).backgroundColor
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Consumer(
              builder: (BuildContext context,
                  Counter counterProvider, Widget child){
                return  Text('${counterProvider.count}');
              },
            ),
            SizedBox(
              height: 50,
            ),
            GestureDetector(
              child: Text('点击'),
              onTap: clickNow,
            ),
            SizedBox(
              height: 50,
            ),
            Column(
              children: <Widget>[
                MaterialButton(
                    child: Text('红色主题-按钮',style:TextStyle(color: Colors.white),),
                    onPressed: (){
                      changeTheme(context, 2);
                    })
              ],
            ),
            GestureDetector(
              child: Text('绿色主题-手势'),
              onTap: (){
                changeTheme(context, 3);
              },
            )
          ],
        ),
      ),
    );
  }
}