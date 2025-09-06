import 'package:flutter/material.dart';
import 'package:flutter_app/views/homeScreen.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../models/user.dart';

class UsuarioViewModel {
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

  }

  Future<void> signUp(int id, String name, String email, String password) async {
    final url = Uri.parse('http://localhost:3000/pegarUsuario?name=$name&email=$email&password=$password');

    final response = await http.get(
      url,
      headers: {'Content-Type': 'application/json'},
    );

    final retorno = response.body;
    Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));//tem q ver cm criar o context

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      error = null;
    } else {
      error = 'Login failed';
      user = null;
    }
  }

}