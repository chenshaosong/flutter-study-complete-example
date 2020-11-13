import 'package:flutter/material.dart';
import 'package:flutter_app/provider/globalProvider/globalProvider.dart';
import 'package:flutter_app/provider/globalProvider/themeProvider.dart';
import 'package:flutter_app/provider/providerAll.dart';
import 'package:provider/provider.dart';

import 'app/appMeta.dart';
import 'main.dart';

void main() {
  var configuredApp = new AppMeta(
      appName: '如梦当醒DEV',
      envName: 'development',
      apiBaseUrl: 'https://easy-mock.bookset.io/mock/5dfae67d4946c20a50841fa7/example/',
      providers: MultiProvider(
        providers: providerAll,
        child: MyApp(),
      ));

  runApp(configuredApp);
}
