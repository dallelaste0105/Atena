import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Future<void> postarUsuario() async { //função para fazer o post
    final url = Uri.parse('http://localhost:3000/user'); // Uri permite que você possa acessar partes específicas de um link
    final response = await http.post(//faz o post em si (onde, linguagem, conteúdo)
      url,//parâmetro obrigatório
      headers: {'Content-Type': 'application/json'},//seleciona a "formatação", neste caso: json
      body: jsonEncode({//codifica para json
        'name': 'Gabriel',
        'email': 'gabriel@email.com',
        'password': '123456',
      }),
    );

    print('Status: ${response.statusCode}');
    print('Body: ${response.body}');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Teste API')),
        body: Center(
          child: ElevatedButton(
            onPressed: postarUsuario,
            child: Text('Enviar dados'),
          ),
        ),
      ),
    );
  }
}