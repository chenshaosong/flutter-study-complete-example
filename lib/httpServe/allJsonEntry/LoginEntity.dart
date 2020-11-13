
//登陆参数  数据模型
class LoginEntity {
  String account;
  String password;
  LoginEntity({this.account, this.password});

  factory LoginEntity.fromJson(json) {
    return LoginEntity(
      account: json["account"],
      password: json["password"],
    );
  }
}