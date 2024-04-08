import 'dart:convert';

import 'package:dark_mode_changer/models/user_model.dart';
import 'package:dark_mode_changer/services/api_service.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UserProvider extends ChangeNotifier {
  UserProvider(
    this._apiService,
  );
  final ApiService _apiService;
  int _index = 0;
  void setIndex(int index) {
    _index = index;
  }

  int getIndex() {
    return _index;
  }

  Future<List<UserModel>> getUsers() async {
    http.Response response =
        await _apiService.makeRequest(HttpMethod.get, '/users');
    if (response.statusCode >= 200 && response.statusCode <= 300) {
      final String body = response.body;
      List<dynamic> decodedData = jsonDecode(body);
      List<UserModel> ml =
          decodedData.map((e) => UserModel.fromJson(e)).toList();
      return ml;
    }
    throw Exception(
        'Response failed with this status code : ${response.statusCode}');
  }
}
