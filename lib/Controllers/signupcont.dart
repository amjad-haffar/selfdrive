import 'package:get/get.dart';
import 'package:wings/Models/profile.dart';
import 'package:wings/Views/DestinationList.dart';
import 'package:wings/Views/home/home.dart';
import 'package:wings/api/APIurls.dart';
import 'package:wings/api/Request.dart';

class SignUpCont extends GetxController {
  late Profile profile;
  Rx<Profile> user =
      Profile(name: "ahmad", email: "", password: "", userName: "").obs;
  initData(
    String email,
    String userName,
    String password,
  ) {
    user.value.email = email;
    user.value.password = password;
    user.value.userName = userName;
  }

  signup() async {
    print(user.value.password);
    var res = await Request.createModel(user.value, apiName.name(apis.signup));
    print(res);
    Get.off(() => MyDashBoard());
  }

  login() async {
    var res = await Request.login(
        apiName.name(apis.login), user.value.email, user.value.password);
    print(res);
    Get.off(() => MyDashBoard());
  }
}
