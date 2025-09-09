import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> login(int id, String name, String email, String password) async {
  final url = Uri.parse("https://atena-tb6q.onrender.com/cadastroUsuario");//verificar se a url é valida
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

  if (response.statusCode == 201) {
    print('Usuário cadastrado com sucesso');
  } else {
    print('Erro: ${response.statusCode}');
    print('Mensagem: ${response.body}');
  }
}
