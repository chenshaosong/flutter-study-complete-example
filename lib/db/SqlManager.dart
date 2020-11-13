
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
//数据库管理
class SqlManager{

  static const _VERSION=1; //版本

  static const _NAME="css.db"; //数据库内容

  static Database _database; // 数据库


  ///初始化 数据库
  static init() async {
    var databasesPath=await getDatabasesPath();

    String path = join(databasesPath, _NAME);

    _database =await openDatabase(path,version: _VERSION,onCreate: (Database db,int version) async{});
  }

  ///判断表是否存在
  static isTableExits(String tableName) async {
    await getCurrentDatabase();
    var res=await _database.rawQuery("select * from Sqlite_master where type = 'table' and name = '$tableName'");
    return res!=null && res.length >0;
  }


  ///获取当前数据库对象
  static Future<Database> getCurrentDatabase() async {
    if(_database == null){
      await init();
    }
    return _database;
  }

  ///关闭
  static close() {
    _database?.close();
    _database = null;
  }
}
