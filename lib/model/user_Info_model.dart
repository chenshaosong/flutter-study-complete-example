
class UserInfoModel {
  String name;
  int id;

  String selfName;

  /// 构造函数
  UserInfoModel({this.name, this.id, this.selfName});
  // 转换为json
  UserInfoModel.fromJson(Map<String, dynamic> json)
      : name = json['name'],
        id = json['id'],
        selfName = json['selfName'];

  Map<String, dynamic> toJson() =>
      {
        'name': name,
        'id': id,
      };

}
