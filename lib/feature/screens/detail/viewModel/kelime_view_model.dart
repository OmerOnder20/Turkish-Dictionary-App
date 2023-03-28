import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:tdk_app/product/model/kelime_model.dart';
import 'package:tdk_app/product/model/users_model.dart';

// import '../model/kelime_model.dart';
import '../../../../product/model/Products_model.dart';

class KelimeProvider extends ChangeNotifier {
  @override
  Future<List<UsersModel>?> usersFutureFetch() async {
    try {
      final usersUrl = Uri.parse("https://jsonplaceholder.typicode.com/users");
      final response = await http.get(usersUrl);
      if (response.statusCode == 200) {
        var responseBody = jsonDecode(response.body);
        if (responseBody is List) {
          return responseBody.map((e) => UsersModel.fromJson(e)).toList();
        }
      }
    } catch (e) {
      print(e);
    }
    return null;
  }

  @override
  Future<ProductsModel?> fetchFutureProducts() async {
    try {
      final url = Uri.parse("https://dummyjson.com/products");
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final responseBody = jsonDecode(response.body);

        if (responseBody is Map<String, dynamic>) {
          return ProductsModel.fromJson(responseBody);
        }
      }
    } catch (e) {
      print(e);
    }
    return null;
  }

  Future<List<KelimeModel>?> fetchFutureKelime() async {
    try {
      final url = Uri.parse("https://sozluk.gov.tr/gts?ara=kelime");
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final responseBody = jsonDecode(response.body);
        if (responseBody is List) {
          return responseBody.map((e) => KelimeModel.fromJson(e)).toList();
        }
      }
    } catch (e) {
      print(e);
    }
    return null;
  }
}
