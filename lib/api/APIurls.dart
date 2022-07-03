const String Server = 'http://10.0.2.2:8000';

enum apis {
  destination,
}

class apiName {
  static String name(apis k) {
    switch (k) {
      case apis.destination:
        return '/api/get/destinations';
      default:
        return '';
    }
  }
}
