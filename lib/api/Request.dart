import 'package:dio/dio.dart';
import 'package:wings/api/client.dart';
import 'package:wings/features/Models/Model.dart';
typedef JsonDecoder<T> = Function(Map<String, dynamic> json);
class Request {
  // final String url;
  // final Dio dio;
  // Request({required this.url, required this.dio});
  // Future<Response> getAll() {
  //   return dio.get(url);
  // }

  // Future<Response> get(String id) {
  //   return dio.get(url);
  // }

  static Future<List<T>> getAllModel<T>(String url, JsonDecoder<T> fromJson,) async {
    var body = {};
    var data =
        await RequestDio.callAPI(url, body, method: 'GET', apiToken: "token");

    List<T> objects = List.empty();

    if (data.isNotEmpty) {
      for (Map<String, dynamic> d in data) {
        T r = fromJson(d);
        objects.add(r);
      }
      return objects;
    }
    return List.empty();
  }
}
