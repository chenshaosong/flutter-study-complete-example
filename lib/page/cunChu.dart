import 'package:flutter/material.dart';
import 'package:flutter_app/storage/storage.dart';

class CunCchuPage extends StatefulWidget {
  @override
  State<CunCchuPage> createState() {
    // TODO: implement createState
    return _cunChuPagePage();
  }
}

// ignore: camel_case_types
class _cunChuPagePage extends State<CunCchuPage> {
  String storageText = '';
  @override
  void initState() {
    // TODO: implement initState
    storageText = '';
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('存储'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  createCunZhu()
                ],
              )
            ],
          ),
        ));
  }


  Widget createCunZhu() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 10, top: 20, bottom: 20),
          child: Text('存储',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        ),
        Container(
          width: 750,
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              GestureDetector(
                child: Text('点击存储信息'),
                onTap: () {
                  StorageUtil.saveMsg('token', '465');
                },
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    child: Text('点击获取存储信息'),
                    onTap: () {
                      StorageUtil.getMsg('token').then((data) {
                        print(data);
                        setState(() {
                          storageText = data;
                        });
                      });
                    },
                  ),
                  Text(
                    '${storageText}',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              )
            ],
          ),
        )
      ],
    );
  }
}
