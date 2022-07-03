import 'package:get/get.dart';
import 'package:wings/Models/user.dart';
import 'package:wings/Views/DestinationList.dart';

class UsersLogin extends GetxController {
  Rx<User> user = User(email: "", password: "", name: "").obs;
  initData(
    String email,
    String name,
    String password,
  ) {
    user.value.email = email;
    user.value.name = name;
    user.value.password = password;
  }

  signup() {}
  login() {
    Get.off(DestinationsPage());
  }
}
