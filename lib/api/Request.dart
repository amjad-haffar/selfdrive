import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:mapbox_gl/mapbox_gl.dart';
import 'package:wings/Controllers/tour.dart';
import 'package:wings/Models/Destinations.dart';
import 'package:wings/Models/Model.dart';
import 'package:wings/api/client.dart';
import 'package:wings/api/dioerrormap.dart';

import '../main.dart';

typedef JsonDecoder<T> = Function(Map<String, dynamic> json);
typedef Empty<T> = T Function();

class Request {
  static Future<dynamic> login(String url,String email, String password) async {
    var json = {"email": email, "password": password};

    //print(json);
    var r = await RequestDio.callAPI(url,json,"POST");
    print('response = ' + r.toString());
  }

  static Future<List<T>> getAllModel<T>(
    String url,
    JsonDecoder<T> fromJson,
  ) async {
    var body = {};
    var data = await RequestDio.callAPI(url, body, 'GET', apiToken: "token");
    List<T> objects = [];
    if (data != null) {
      for (Map<String, dynamic> d in data) {
        T r = fromJson(d);
        objects.add(r);
      }
      return objects;
    }
    return [];
  }

  static Future<dynamic> createModel(Model obj, String url) async {
    var body = {};
    if (obj != null) body = obj.toJson();

    dynamic data =
        await RequestDio.callAPI(url, body, 'POST');

    if (data != null) {
      return true;
    } else {
      return false;
    }
  }

  static Future<T> getModelByID<T>(
      String url, JsonDecoder<T> fromJson, Empty empty) async {
    //return Repository.getModel<M.Request>(apis.requestByID, (json) => M.Request.fromJson(json), () =>  M.Request.empty());

    var body = {};
    List<dynamic> data =
        await RequestDio.callAPI(url, body, 'GET', apiToken: "token");

    if (data != null) {
      T r = fromJson(data[0]);
      return r;
    } else {
      return empty();
    }
  }

  static Future sendRoutes(Map distances, List<int> ids) async {
    var body = {"distances": distances, "cities": ids};
    var data =
        await RequestDio.callAPI("http://10.0.2.2:5000/ga", body, "Post");

    var unsorted = TourCont().selected;
    for (int x = 0; x < unsorted.length; x++) {}
    return data;
  }

  static Future getdrivingRouteUsingMapbox(
      LatLng source, LatLng destination) async {
    Dio _dio = Dio();
    String baseUrl = 'https://api.mapbox.com/directions/v5';
    String accessToken = dotenv.env['MAPBOX_ACCESS_TOKEN']!;
    String navType = 'driving';
    String url =
        '$baseUrl/mapbox/$navType/${source.longitude}%2C${source.latitude}%3B${destination.longitude}%2C${destination.latitude}?alternatives=true&continue_straight=true&geometries=geojson&language=en&overview=full&steps=true&access_token=$accessToken';
    // url = Uri.parse(url).toString();
    // String url =
    //     "https://api.mapbox.com/directions/v5/mapbox/driving/-73.99648610713642%2C40.73657925826228%3B-73.98821657458946%2C40.73273492014286?alternatives=true&geometries=geojson&language=en&overview=simplified&steps=true&access_token=pk.eyJ1IjoiYW1qYWRhbGhhZmZhciIsImEiOiJja2g2ZXpqd2IwbWJpMnlxdnRwZTRvcWswIn0.SH8v8H53WyTSskcPmzDh0w";
    try {
      _dio.options.contentType = Headers.jsonContentType;
      final responseData = await _dio.get(url);
      return responseData.data;
    } catch (e) {
      final errorMessage = DioExceptions.fromDioError(e as DioError).toString();
      print(errorMessage);
    }
  }

  static Future getReverseGeocodingGivenLatLngUsingMapbox(LatLng latLng) async {
    String baseUrl = 'https://api.mapbox.com/geocoding/v5/mapbox.places';
    String accessToken = dotenv.env['MAPBOX_ACCESS_TOKEN']!;
    Dio _dio = Dio();
    String query = '${latLng.longitude},${latLng.latitude}';
    String url = '$baseUrl/$query.json?access_token=$accessToken';
    url = Uri.parse(url).toString();
    try {
      _dio.options.contentType = Headers.jsonContentType;
      final responseData = await _dio.get(url);
      return responseData.data;
    } catch (e) {
      final errorMessage = DioExceptions.fromDioError(e as DioError).toString();
      print(errorMessage);
    }
  }

  // static Future getSearchResultsFromQueryUsingMapbox(String query) async {
  //   String baseUrl = 'https://api.mapbox.com/geocoding/v5/mapbox.places';
  //   String accessToken = dotenv.env['MAPBOX_ACCESS_TOKEN']!;
  //   String searchType = 'place';
  //   String searchResultsLimit = '5';
  //   String proximity =
  //     '${sharedPreferences.getDouble('longitude')}%2C${sharedPreferences.getDouble('latitude')}';
  //   Dio _dio = Dio();
  //   String url =
  //       '$baseUrl/$query.json?&limit=$searchResultsLimit&proximity=$proximity&types=$searchType&access_token=$accessToken';
  //   url = Uri.parse(url).toString();
  //   print(url);
  //   try {
  //     _dio.options.contentType = Headers.jsonContentType;
  //     final responseData = await _dio.get(url);
  //     return responseData.data;
  //   } catch (e) {
  //     final errorMessage = DioExceptions.fromDioError(e as DioError).toString();
  //     print(errorMessage);
  //   }
  // }
}
