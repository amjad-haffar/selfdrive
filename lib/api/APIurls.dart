const String Server = 'https://localhost.com';

enum apis {
  destination,
}

class apiName {
  static String? name(apis k) {
    switch (k) {
      case apis.destination:
        return '/api/Destination';
      default:
    }
  }
}
