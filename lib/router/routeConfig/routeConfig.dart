import 'package:fluro/fluro.dart';
import 'package:flutter_app/router/routeHandle/routeHandle.dart';

class Routes {
  static String root = "/";
  static String mine = "/mine";
  static String home = "/home";
  static String ability = "/ability";
  static String abilityCamera = "/ability/camera";
  static String abilityCharts = "/ability/charts";
  static String abilityCunChu = "/ability/cunChu";
  static String abilityFuWenBen = "/ability/fuWenBen";
  static String abilityhttpW = "/ability/httpW";
  static String abilityLuBoTu = "/ability/lunBoTu";
  static String abilitySql = "/ability/sql";
  static String abilityToast = "/ability/toast";
  static String abilityVideo = "/ability/video";

  static void configureRoutes(FluroRouter router) {
    router.define(root, handler: rootHandler);
    router.define(mine, handler: mineHandler);
    router.define(home, handler: homeHandler);
    router.define(ability, handler: abilityHandler);
    router.define(abilityCamera, handler: abilityCameraHandler);
    router.define(abilityCharts, handler: abilityChartsHandler);
    router.define(abilityCunChu, handler: abilityCunChuHandler);
    router.define(abilityFuWenBen, handler: abilityFuWenBenHandler);
    router.define(abilityhttpW, handler: abilityhttpWHandler);
    router.define(abilityLuBoTu, handler: abilityLuBoTuHandler);
    router.define(abilitySql, handler: abilitySqlHandler);
    router.define(abilityToast, handler: abilityToastHandler);
    router.define(abilityVideo, handler: abilityVideoHandler);
  }
}
