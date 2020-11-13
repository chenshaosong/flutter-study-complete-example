import 'package:flutter/material.dart';
import 'package:flutter_app/db/splProvider/user_sql_provider.dart';
import 'package:flutter_app/model/user_Info_model.dart';

class SqlPage extends StatefulWidget {
  @override
  State<SqlPage> createState() {
    // TODO: implement createState
    return _sqlPagePage();
  }
}

// ignore: camel_case_types
class _sqlPagePage extends State<SqlPage> {
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
          title: Text('数据库'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  createSql()
                ],
              )
            ],
          ),
        ));
  }
  Widget createSql() {
    insert() async{
      UserDbProvider provider = new UserDbProvider();
      UserInfoModel userModel= UserInfoModel();
      userModel.id=001;
      userModel.name="陈少松";
      provider.insert(userModel);
    }

    getData() async{
      UserDbProvider provider = new UserDbProvider();
      return provider.getPersonInfo(001);
    }
    update() async{
      UserDbProvider provider = new UserDbProvider();
      UserInfoModel userModel= await provider.getPersonInfo(001);
      userModel.name="陈少松1";
      provider.update(userModel);
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 10, top: 20, bottom: 20),
          child: Text('数据库使用',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        ),
        MaterialButton(
          child: Text('更新数据为--陈少松1'),
          onPressed: () async{
            await update();
            var a = await getData();
            setState(() {
              storageText = a.name;
            });
          },
        ),
        MaterialButton(
          child: Text('插入数据--陈少松'),
          onPressed: () async {
            await insert();
            var a = await getData();
            setState(() {
              storageText = a.name;
            });
          },
        ),
        Text(storageText)
      ],
    );
  }
}
