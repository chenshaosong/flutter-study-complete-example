import 'package:flutter/material.dart';
import 'package:flutter_ijkplayer/flutter_ijkplayer.dart';

class VideoPage extends StatefulWidget {
  @override
  State<VideoPage> createState() {
    // TODO: implement createState
    return _videoPagePage();
  }
}

// ignore: camel_case_types
class _videoPagePage extends State<VideoPage> {
  IjkMediaController controller = IjkMediaController();
  @override
  void initState() {
    // TODO: implement initState
    controller.setNetworkDataSource(
//        'https://img.cdn.aliyun.dcloud.net.cn/guide/uniapp/%E7%AC%AC1%E8%AE%B2%EF%BC%88uni-app%E4%BA%A7%E5%93%81%E4%BB%8B%E7%BB%8D%EF%BC%89-%20DCloud%E5%AE%98%E6%96%B9%E8%A7%86%E9%A2%91%E6%95%99%E7%A8%8B@20181126.mp4',
      // 'rtmp://172.16.100.245/live1',
      // 'https://www.sample-videos.com/video123/flv/720/big_buck_bunny_720p_10mb.flv',
//              "https://www.sample-videos.com/video123/mp4/720/big_buck_bunny_720p_1mb.mp4",
        'http://184.72.239.149/vod/smil:BigBuckBunny.smil/playlist.m3u8',
        // "file:///sdcard/Download/Sample1.mp4",
        autoPlay: true);
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text('视频'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  createVideo()
                ],
              )
            ],
          ),
        ));
  }

  Widget createVideo() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: 10, top: 20, bottom: 20),
            child: Text('视频',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          ),
          SizedBox(
            width: 750,
            height: 200,
            child: IjkPlayer(
              mediaController: controller,
            ),
          )
        ]);
  }
}
