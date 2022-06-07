import 'package:get/get.dart';
import 'package:wings/features/Models/user.dart';
import 'package:wings/features/Views/Destination/DestinationList.dart';

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
