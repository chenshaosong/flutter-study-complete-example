import 'package:flutter_app/provider/globalProvider/globalProvider.dart';
import 'package:flutter_app/provider/globalProvider/themeProvider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
// provider 的所有注册
List<SingleChildWidget> providerAll = [
  ChangeNotifierProvider(create: (_) => Counter()),
  ChangeNotifierProvider(create: (_) => ThemeColor())
];