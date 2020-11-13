import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CamraPage extends StatefulWidget {
  @override
  State<CamraPage> createState() {
    // TODO: implement createState
    return _cameraPagePage();
  }
}

// ignore: camel_case_types
class _cameraPagePage extends State<CamraPage> {
  String imgFile = '';
  @override
  void initState() {
    // TODO: implement initState
    imgFile = '';
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
          title: Text('照相机'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  createCamera()
                ],
              )
            ],
          ),
        ));
  }

  Widget createCamera() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10, top: 20, bottom: 20),
            child: Text('相册',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          ),
          MaterialButton(
              child: Text('从摄像头获取图片'),
              color: Colors.yellow,
              onPressed: () async {
                final pickedFile =
                await ImagePicker().getImage(source: ImageSource.camera);
                setState(() {
                  imgFile = pickedFile != null ? pickedFile.path : '';
                });
              }),
          SizedBox(
            height: 10,
          ),
          Text('当前的图片地址：${imgFile}'),
          SizedBox(
            height: 10,
          ),
          imgFile != '' ? Image.asset(imgFile) : SizedBox()
        ]);
  }
}
