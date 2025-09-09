import 'dart:convert';
import 'package:http/http.dart' as http;
String resposta = "";

Future<void> login(int id, String name, String email, String password) async {
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

  if(response.statusCode == 409){
    resposta = "Usuário já existe";
  }
}
