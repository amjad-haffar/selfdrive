import 'package:wings/features/Models/Model.dart';

class User extends Model {
  late String name;
  late String email;
  late String  password;
  User( {required this.email,required this.name,required this.password});

  @override
  User.fromJson(Map<String, dynamic> json) {}
  @override
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    return data;
  }
}
