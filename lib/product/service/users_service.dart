import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../model/kelime_model.dart';
import '../model/users_model.dart';

class UsersService {
  Future<List<UsersModel>?> fetchUsers() async {
    try {
      final url = Uri.parse("https://jsonplaceholder.typicode.com/users");
      final response = await http.get(url);
      if (response.statusCode == 200) {
        final responseBody = jsonDecode(response.body);
        if (responseBody is List) {
          return responseBody.map((e) => UsersModel.fromJson(e)).toList();
        }
      }
    } catch (e) {
      print(e.toString());
    }
    return null;
  }

  Future<List<KelimeModel>?> fetchFutureKelime() async {
    try {
      final url = Uri.parse("https://sozluk.gov.tr/gts?ara=kelime");
      final response = await http.get(url);
      if (response.statusCode == 200) {
        debugPrint(response.body.toString());
        final responseBody = jsonDecode(response.body);
        debugPrint(responseBody.toString());
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
