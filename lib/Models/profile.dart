import 'package:wings/Models/Model.dart';

class Profile extends Model {
  Profile({
    this.token,
    required this.name,
    required this.email,
    required this.userName,
    required this.password
  });

  String? token;
  String name;
  String email;
  String userName;
  String password;

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        // token: json["token"],
        name: json["name"],
        email: json["email"],
        userName: json["user_name"],
        password: json["password"]
      );

  Map<String, dynamic> toJson() => {
        "token": token,
        "name": name,
        "email": email,
        "user_name": userName,
        "password":password
      };
}
