import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:wings/api/APIurls.dart';

Logger logger = Logger();

requestInterceptor(RequestOptions options) {
  logger.d(options);
  return options;
}

errorInterceptor(DioError error) {
  logger.d(error.error);
  logger.d(error.message);
  return error;
}

resInterceptor(Response res) {
  logger.d(res.data);
  return res;
}
class RequestDio {
  static Future<Response> getHttps(
      String url, var data, String method,
      {String? apiToken}) async {
    BaseOptions options = BaseOptions(
        baseUrl: Server,
        connectTimeout: 50000,
        receiveTimeout: 100000,
        sendTimeout: 80000);
    Dio dio = Dio(options);
    //   dio.interceptors.add(InterceptorsWrapper(
    //   onRequest: (options, handler) async => requestInterceptor(options),
    //   onResponse: (Response r, handler) async => resInterceptor(r),
    //   onError: (e, handler) async => errorInterceptor(e),
    // ));
    Map<String, String> headers = {
      "Content-type": "application/json",
      "Accept": "application/json",
      // TODO
      "Authorization": "Bearer " + apiToken!
    };
    try {
      Response response = await dio.request(
        url,
        data: data,
        options: Options(headers: headers, method: method),
      );

      print("getHttps() | response.statusCode");
      print(response.statusCode);
      //  print(response);
      return response;
    } catch (e, s) {
      print("getHttps() | catch exception");
      print(e);
      print(s);
      throw e;
    }
  }

   static Future<dynamic> callAPI(String url, var body, String method,
      {
      String apiToken = '',
      }) async {
    print(body.toString());
    // apiToken ??= '';
    print(apiToken);

    try {
      Response r =
          await getHttps( url, body, method, apiToken: apiToken);
      // print('response = ' + r.toString());
      // List<Map<String, dynamic>> data;
      if (r.data != '') {
        // data = r.data;
        print("callAPI()");
        return r.data;
      }
      return List.empty();
    } catch (e, s) {
      print("callAPI() | catch exception");
      print('error is ' + e.toString());
      print('stack is ' + s.toString());

      if (e is DioError) {
        print("DIO error: " + e.response.toString());
        // Get.snackbar('False', e.response.toString(), duration: Duration(seconds: 3) );
      }
      return List.empty();
    }
  }
}

// Dio client() {
//   Dio dio = Dio();
//   Options diooptions = Options();
//   dio.options.baseUrl = "https://localhost.com";
//   dio.options.headers['Authoriation'] = "key";
//   dio.options.connectTimeout = 20000;
//   dio.interceptors.add(InterceptorsWrapper(
//     onRequest: (options, handler) => requestInterceptor(options),
//     onResponse: (Response r, handler) => resInterceptor(r),
//     onError: (e, handler) => errorInterceptor(e),
//   ));

//   return dio;
// }