import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/page/Charts.dart';
import 'package:flutter_app/page/HttpW.dart';
import 'package:flutter_app/page/Sql.dart';
import 'package:flutter_app/page/Toast.dart';
import 'package:flutter_app/page/Video.dart';
import 'package:flutter_app/page/ability.dart';
import 'package:flutter_app/page/camera.dart';
import 'package:flutter_app/page/cunChu.dart';
import 'package:flutter_app/page/fuWenBen.dart';
import 'package:flutter_app/page/home.dart';
import 'package:flutter_app/page/lunBoTu.dart';
import 'package:flutter_app/page/mine.dart';
import 'package:flutter_app/page/tabPage/tabBar.dart';

var rootHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return TabBarPage();
});
var mineHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return MinePage();
});
var homeHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return HomePage();
});
var abilityHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return AbilityPage();
});
var abilityCameraHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return CamraPage();
});
var abilityChartsHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return ChartsPage();
});
var abilityCunChuHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return CunCchuPage();
});
var abilityFuWenBenHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return FuWenBenPage();
});
var abilityLuBoTuHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return LunBoTuPage();
});
var abilityhttpWHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return HttpWPage();
});
var abilitySqlHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return SqlPage();
});
var abilityToastHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return ToastPage();
});
var abilityVideoHandler = Handler(handlerFunc: (BuildContext context, Map<String, dynamic> params) {
  return VideoPage();
});
