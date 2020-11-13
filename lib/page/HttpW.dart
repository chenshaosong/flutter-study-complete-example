import 'package:flutter/material.dart';
import 'package:flutter_app/httpServe/httpApi.dart';
import 'package:flutter_app/httpServe/httpMeth.dart';
import 'package:flutter_app/httpServe/httpServe.dart';

class HttpWPage extends StatefulWidget {
  @override
  State<HttpWPage> createState() {
    // TODO: implement createState
    return _httpWPagePage();
  }
}

// ignore: camel_case_types
class _httpWPagePage extends State<HttpWPage> {
  String resultHttp = '';
  @override
  void initState() {
    // TODO: implement initState
    resultHttp = 'http请求';
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
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  createHttp()
                ],
              )
            ],
          ),
        ));
  }

  Widget createHttp() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10, top: 20, bottom: 20),
            child: Text('http请求',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          ),
          Container(
            width: 750,
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                GestureDetector(
                  child: Column(
                    children: [Text('点击请求列表数据')],
                  ),
                  onTap: () {
                    DioManager().request(NWMethod.POST, NWApi.queryListJsonPath,
                        params: {
                          "account": "421789838@qq.com",
                          "password": "123456"
                        }, success: (data) {
                          setState(() {
                            resultHttp = data.toString();
                          });
                        });
                  },
                ),
                GestureDetector(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [Text('点击请求数据'), Text(resultHttp)],
                  ),
                  onTap: () {
                    DioManager().request(NWMethod.POST, NWApi.loginPath,
                        params: {
                          "account": "421789838@qq.com",
                          "password": "123456"
                        }, success: (data) {
                          print(data['email']);
                          setState(() {
                            resultHttp = data.toString();
                          });
                        });
                  },
                )
              ],
            ),
          ),
        ]);
  }
}
