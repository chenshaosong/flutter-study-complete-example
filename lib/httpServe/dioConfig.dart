import 'package:dio/dio.dart';
//dio 的配置
final BaseOptions defaultOption = BaseOptions(
    baseUrl: 'https://easy-mock.bookset.io/mock/5dfae67d4946c20a50841fa7/example/',
    contentType: Headers.jsonContentType,
    responseType: ResponseType.json,
    receiveDataWhenStatusError: false,
    connectTimeout: 30000,
    receiveTimeout: 3000,
    headers: {"content-type":""}
);