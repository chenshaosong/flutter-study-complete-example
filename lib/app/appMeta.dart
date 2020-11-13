import 'package:flutter/material.dart';

class AppMeta extends InheritedWidget {
  AppMeta({
    @required this.appName,
    @required this.envName,
    @required this.apiBaseUrl,
    @required Widget providers,
  }):super(child: providers);

  final String appName;//app名字
  final String envName;//环境名字
  final String apiBaseUrl;//基础url

  static AppMeta of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(AppMeta);
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;
}
