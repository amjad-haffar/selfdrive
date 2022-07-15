const String Server = 'http://10.0.2.2:8000';

enum apis { destination, signup, login }

class apiName {
  static String name(apis k) {
    switch (k) {
      case apis.destination:
        return '/api/get/destinations';
      case apis.signup:
        return '/api/user/signup';
      case apis.login:
        return '/api/user/login';
      default:
        return '';
    }
  }
}
