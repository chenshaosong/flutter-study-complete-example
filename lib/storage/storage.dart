import 'package:shared_preferences/shared_preferences.dart';

class StorageUtil{
 static saveMsg(String key,String msg) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, msg);
  }
  static getMsg(String key) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }
}