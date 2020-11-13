import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastPage extends StatefulWidget {
  @override
  State<ToastPage> createState() {
    // TODO: implement createState
    return _toastPagePage();
  }
}

// ignore: camel_case_types
class _toastPagePage extends State<ToastPage> {
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
          title: Text('toast'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  createToast()
                ],
              )
            ],
          ),
        ));
  }

  Widget createToast() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 10, top: 20, bottom: 20),
          child: Text('toast',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        ),
        MaterialButton(
          child: Text('top'),
          onPressed: () {
            Fluttertoast.cancel();
            Fluttertoast.showToast(
                msg: "top",
                toastLength: Toast.LENGTH_SHORT, //长度
                gravity: ToastGravity.TOP,
                backgroundColor: Color.fromRGBO(0, 0, 0, .3),
                textColor: Colors.white,
                fontSize: 16.0);
          },
        ),
        MaterialButton(
          child: Text('center'),
          onPressed: () {
            Fluttertoast.cancel();
            Fluttertoast.showToast(
                msg: "center",
                toastLength: Toast.LENGTH_SHORT, //长度
                gravity: ToastGravity.CENTER,
                backgroundColor: Color.fromRGBO(0, 0, 0, .3),
                textColor: Colors.white,
                fontSize: 16.0);
          },
        ),
        MaterialButton(
          child: Text('bottom'),
          onPressed: () {
            Fluttertoast.cancel();
            Fluttertoast.showToast(
                msg: "bottom",
                toastLength: Toast.LENGTH_SHORT, //长度
                gravity: ToastGravity.BOTTOM,
                backgroundColor: Color.fromRGBO(0, 0, 0, .3),
                textColor: Colors.white,
                fontSize: 16.0);
          },
        )
      ],
    );
  }
}
