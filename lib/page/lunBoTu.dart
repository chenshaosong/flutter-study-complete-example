import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class LunBoTuPage extends StatefulWidget {
  @override
  State<LunBoTuPage> createState() {
    // TODO: implement createState
    return _lubBoTuPagePage();
  }
}

// ignore: camel_case_types
class _lubBoTuPagePage extends State<LunBoTuPage> {
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
          title: Text('轮播图'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  createLunBoTu()
                ],
              )
            ],
          ),
        ));
  }

  Widget createLunBoTu() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 10, top: 20, bottom: 20),
          child: Text('轮播',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        ),
        SizedBox(
          width: 750,
          height: 200,
          child: new Swiper(
            itemBuilder: (BuildContext context, int index) {
              return Image.network(
                'http://b-ssl.duitang.com/uploads/item/201703/01/20170301163305_sCd8j.gif',
                fit: BoxFit.cover,
              );
            },
            autoplay: true,
            itemCount: 4,
            pagination: new SwiperPagination(), //这是点的控制器
//                  control: new SwiperControl(),//这是箭头控制器
          ),
        ),
      ],
    );
  }
}
