import 'package:flutter/material.dart';
import 'package:flutter_app/app/Application.dart';

// ignore: must_be_immutable
class AbilityPage extends StatefulWidget {
  List<Map<String,String>> allItem = [
    {"url":"/ability/camera","name":"照相机示例"},
    {"url":"/ability/charts","name":"图表示例"},
    {"url":"/ability/cunChu","name":"storage存储示例"},
    {"url":"/ability/fuWenBen","name":"富文本示例"},
    {"url":"/ability/httpW","name":"http请求示例"},
    {"url":"/ability/lunBoTu","name":"轮播图示例"},
    {"url":"/ability/sql","name":"sql示例"},
    {"url":"/ability/toast","name":"toast示例"},
    {"url":"/ability/video","name":"视频示例"}
  ];
  @override
  State<AbilityPage> createState() {
    // TODO: implement createState
    return _abilityPage();
  }
}

// ignore: camel_case_types
class _abilityPage extends State<AbilityPage> with AutomaticKeepAliveClientMixin {
  @override
  void initState() {
    // TODO: implement initState
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
          title: Text('功能'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children:createListAll(),
          ),
        ));
  }
  List<Widget> createListAll(){
    List<Widget> res;
    res = widget.allItem.map((item) => ListTile(
        leading: new Icon(Icons.map),
        title: new Text(item["name"]),
        onTap: (){
          Application.router.navigateTo(context, item["url"]);
        }
    )).toList();
    return res;
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
