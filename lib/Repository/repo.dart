import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:wings/api/Request.dart';
import 'package:wings/api/client.dart';

class Repository {
  // late?
  // late Dio apiclient;
  // Repository() {
  //   apiclient = client();
  //   //shared pref init
  // }
  // Future<List<Destinations>> getAllDestList(String url) async {
  //   Response res = await Request(url: url, dio: apiclient).getAll();
  //   return List<Destinations>.from(
  //       (res.data).map((json) => Destinations.fromJson(json)));
  // }
  // Future<Destinations> fetchdesitnation(String id, url) async {
  //   Response res = await Request(url: url, dio: apiclient).get(id);
  //   //not sure
  //   return Destinations.fromJson(res.data);
  // }
}
