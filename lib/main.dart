import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/app/Application.dart';
import 'package:flutter_app/app/appMeta.dart';
import 'package:flutter_app/httpServe/dioConfig.dart';
import 'package:flutter_app/httpServe/httpServe.dart';
import 'package:flutter_app/router/routeConfig/routeConfig.dart';
import 'package:provider/provider.dart';

import 'provider/globalProvider/themeProvider.dart';

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  MyApp() {
    Application.router = FluroRouter();

    Routes.configureRoutes(Application.router);
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var config = AppMeta.of(context);
    // 初始化环境和dio的配置
    defaultOption.baseUrl = config.apiBaseUrl;
    DioManager.initDioOption(defaultOption);
    return Consumer<ThemeColor>(
      builder: (context, appInfo, _) {
        return MaterialApp(
          title: config.appName,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              primaryColor: appInfo.themeColor, //主题主色，决定导航栏颜色
              iconTheme: IconThemeData(color: Colors.blue), // Icon的默认样式
              textTheme: TextTheme(
                  bodyText2:
                      TextStyle(color: Colors.black)), // 字体主题，包括标题、body等文字样式
              backgroundColor: appInfo.themeColor, // 背景颜色
              disabledColor: Colors.grey, //禁用时的颜色
              buttonTheme: ButtonThemeData(
                  buttonColor: Colors.yellow,
                  textTheme: ButtonTextTheme.accent)),
          onGenerateRoute: Application.router.generator,
        );
      },
    );
  }
}
