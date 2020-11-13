import 'package:flutter_app/model/user_Info_model.dart';
import 'package:sqflite/sqflite.dart';

import '../SqlManager.dart';
class UserDbProvider{
  ///表名
  final String name = 'userInfo';

  final String columnId="id";//表的列
  final String columnName="name";//表的列
  bool isTableExits = false;

  UserDbProvider();
  //创建 表
  createTableString() async {
    var str = '''
    create table $name (
        $columnId integer primary key,
        $columnName text not null)
    ''';
    Database db = await SqlManager.getCurrentDatabase();
    isTableExits = await SqlManager.isTableExits(name);
    if (!isTableExits) {
      await db.execute(str);
    }
    return db;
  }

  ///查询数据库
  Future _getPersonProvider(Database db, int id) async {
    List<Map<String, dynamic>> maps =
    await db.rawQuery("select * from $name where $columnId = $id");
    return maps;
  }

  ///插入到数据库
  Future insert(UserInfoModel model) async {
    Database db = await createTableString();
    var userProvider = await _getPersonProvider(db, model.id);
    if (userProvider != null) {
      ///删除数据
      await db.delete(name, where: "$columnId = ?", whereArgs: [model.id]);
    }
    return await db.rawInsert("insert into $name ($columnId,$columnName) values (?,?)",[model.id,model.name]);
  }

  ///更新数据库
  Future<void> update(UserInfoModel model) async {
    Database database = await createTableString();
    await database.rawUpdate(
        "update $name set $columnName = ? where $columnId= ?",[model.name,model.id]);

  }


  ///获取事件数据
  Future<UserInfoModel> getPersonInfo(int id) async {
    Database db = await createTableString();
    List<Map<String, dynamic>> maps  = await _getPersonProvider(db, id);
    if (maps.length > 0) {
      return UserInfoModel.fromJson(maps[0]);
    }
    return null;
  }
}
