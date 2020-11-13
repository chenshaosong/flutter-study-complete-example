import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_html/style.dart';

class FuWenBenPage extends StatefulWidget {
  @override
  State<FuWenBenPage> createState() {
    // TODO: implement createState
    return _fuWenBenPagePage();
  }
}

// ignore: camel_case_types
class _fuWenBenPagePage extends State<FuWenBenPage> {
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
          title: Text('富文本'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  createFuWenBen()
                ],
              )
            ],
          ),
        ));
  }

  Widget createFuWenBen() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 10, top: 20, bottom: 20),
          child: Text('富文本解析',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        ),
        Container(
          width: 750,
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Html(
            data: """
                  <div>
                    <h1>Demo Page</h1>
                    <p>This is a fantastic product that you should buy!</p>
                    <h3>Features</h3>
                    <ul>
                      <li>It actually works</li>
                      <li>It exists</li>
                      <li>It doesn't cost much!</li>
                    </ul>
                    <!--You can pretty much put any html in here!-->
                  </div>
                """,
            style: {
              "html": Style(
                backgroundColor: Colors.white70,
              )
            },
            onLinkTap: (url) {
              // 点击链接
            },
            onImageTap: (src) {
              // 点击图片
            },
          ),
        )
      ],
    );
  }
}
