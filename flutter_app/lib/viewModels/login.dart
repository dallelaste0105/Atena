import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/user.dart';

class LoginViewModel extends ChangeNotifier {
  User? user;
  String? error;

  Future<void> login(int id, String name, String email, String password) async {
    final url = Uri.parse('http://localhost:3000/cadastroUsuario');

    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: jsonEncode({'id':id,'name':name, 'email': email, 'password': password}),
    );

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      error = null;
    } else {
      error = 'Login failed';
      user = null;
    }

    notifyListeners();
  }
}