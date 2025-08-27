import 'package:flutter/material.dart';
import '../models/user.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LoginViewModel extends ChangeNotifier {
  User? user;
  String? error;

  Future<void> login(String email, String password) async {
    final response = await http.post(
      Uri.parse('https://suaapi.com/login'),
      body: {'email': email, 'password': password},
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      user = User(id: data['id'], name: data['name'], email: data['email']);
      error = null;
    } else {
      error = 'Login falhou';
      user = null;
    }

    notifyListeners();
  }
}