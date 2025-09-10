import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

Future<void> signup(int id, String name, String email, String password) async {
  final url = Uri.parse("https://atena-tb6q.onrender.com/cadastroUsuario");
  final response = await http.post(
    url,
    headers: {'Content-Type': 'application/json'},
    body: jsonEncode({
      'id': id,
      'name': name,
      'email': email,
      'password': password,
    }),
  ); 


Future<void> login(int id, String name, String email, String password) async {
  final url = Uri.parse("https://atena-tb6q.onrender.com/pegarUsuario");
  final response = await http.post(
    url,
    headers: {'Content-Type': 'application/json'},
    body: jsonEncode({
      'id': id,
      'name': name,
      'email': email,
      'password': password,
    }),
  );}}