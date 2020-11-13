import 'package:flutter/material.dart';
import 'package:flutter_app/app/appConfig.dart';


class TabBarPage extends StatefulWidget{

  @override
  State<TabBarPage> createState() {
    // TODO: implement createState
    return _tabBar();
  }

}

// ignore: camel_case_types
class _tabBar extends State<TabBarPage>{
  //页面配置
  List<Map> tabConfig = [];
  //初始化页面
  int _selectedIndex = 0;
  var  _pageController;
  //页面列表
  List<Widget> _widgetOptions = [];
  //barList
  List<BottomNavigationBarItem> _barItemList = [];
  //容器key
  GlobalKey<ScaffoldState> _scaffoldKey;
  //tab点击事件
  void _onItemTapped(int index) {
    _pageController.animateToPage(index,
        duration: new Duration(milliseconds: 500), curve: Curves.easeInOut);
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabConfig = tabList;
    _pageController  =  new PageController(
      //页面初始化    keepPage 开启页面缓存  viewprotFraction 页面视口
        initialPage: 0, keepPage: true, viewportFraction: 1.0);
    _scaffoldKey  = new GlobalKey<ScaffoldState>();
    tabConfig.forEach((element) {
      _widgetOptions.add(element['page']);
      _barItemList.add(element['item']);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        drawerEdgeDragWidth: 50,
        drawer:  Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              Container(
                  padding: EdgeInsetsDirectional.fromSTEB(20,40,20,20),
                  decoration: BoxDecoration(
                      color: Theme.of(context).backgroundColor,
                      image: DecorationImage(image: NetworkImage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1576755904704&di=835b07cfaba33bb8daed9ea021f3f630&imgtype=0&src=http%3A%2F%2Fimg.pcgames.com.cn%2Fimages%2Fupload%2Fupc%2Ftx%2Fgamephotolib%2F1507%2F16%2Fc3%2F9852120_1437039992874.jpg'),fit: BoxFit.cover)
                  ),
                  child: _personalMsg()
              ),
              ListTile(
                leading: Icon(Icons.close),
                title: Text('关闭draw'),
                onTap: (){
                  _scaffoldKey.currentState.openEndDrawer();
                },
              )
            ],
          ),
        ),
        body:  PageView.builder(
          itemBuilder: (BuildContext context, int index) {
            return _widgetOptions.elementAt(index);
          },
          //页面控制器
          controller: _pageController,
          //有多少个页面
          itemCount: _widgetOptions.length,
          //页面滑动事件
          onPageChanged: (int index) {
            setState(() {
              _selectedIndex = index;
            });
          },
        ),
        bottomNavigationBar:BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            items: _barItemList,
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
            selectedItemColor: Color.fromRGBO(34, 183, 186, 1),
            selectedFontSize: 12
        )
    );
  }
  Widget _personalMsg(){
    return Container(
      margin:EdgeInsetsDirectional.fromSTEB(0,0,0,20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          ClipOval(
            child: Image.network(
              'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1576832202&di=e98bdda757ba0a226fa7b17a704396a6&imgtype=jpg&er=1&src=http%3A%2F%2Fimage.biaobaiju.com%2Fuploads%2F20180801%2F21%2F1533130354-tcjsiIBbEW.png',
              width: 45,
              height: 45,
            ) ,
          ),
          Container(
              margin: EdgeInsetsDirectional.fromSTEB(20,0,0,0),
              child:
              Text('Css',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: Colors.white
                ),
              )
          ),
        ],
      ) ,
    );
  }

}
