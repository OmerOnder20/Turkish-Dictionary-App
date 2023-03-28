import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:tdk_app/feature/screens/detail/view/model/full_model.dart';
import 'package:tdk_app/feature/screens/detail/view/model/json_place_holder_model.dart';
import 'package:tdk_app/feature/screens/detail/view/model/kelime_model.dart';
import 'package:tdk_app/feature/screens/detail/view/model/users_model.dart';

// import '../model/kelime_model.dart';
import '../view/model/Products_model.dart';

class KelimeProvider extends ChangeNotifier {
  @override
  Future<List<UsersModel>?> usersFutureFetch() async {
    var usersUrl = Uri.parse("https://jsonplaceholder.typicode.com/users");
    var response = await http.get(usersUrl);
    if (response.statusCode == 200) {
      var responseBody = jsonDecode(response.body);
      if (responseBody is List) {
        return responseBody.map((e) => UsersModel.fromJson(e)).toList();
      }
    }
    return null;
  }

  @override
  Future<ProductsModel?> fetchFutureProducts() async {
    var url = Uri.parse("https://dummyjson.com/products");
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var responseBody = jsonDecode(response.body);

      if (responseBody is Map<String, dynamic>) {
        return ProductsModel.fromJson(responseBody);
      }
    }
    return null;
  }

  Future<List<KelimeModel>?> fetchFutureKelime() async {
    var url = Uri.parse("https://sozluk.gov.tr/gts?ara=kelime");
    var response = await http.get(url);
    if (response.statusCode == 200) {
      var responseBody = jsonDecode(response.body);
      if (responseBody is List) {
        return responseBody.map((e) => KelimeModel.fromJson(e)).toList();
      }
    }
  }
}
