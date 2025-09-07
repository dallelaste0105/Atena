import 'package:flutter/material.dart';
import 'package:flutter_app/viewModels/loginViewModel.dart';

int id = 0;
final TextEditingController name = TextEditingController();
final TextEditingController email = TextEditingController();
final TextEditingController password = TextEditingController();

class loginView extends StatefulWidget {
  @override
  _loginViewState createState() => _loginViewState();
}

class _loginViewState extends State<loginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Center(child: Column(
        children: [
          TextField(controller: name),
          TextField(controller: email),
          TextField(controller: password),
          ElevatedButton(onPressed: (){login(id, name.text, email.text, password.text);}, child: Text('Login'))
        ]
      )
      ),
    );
  }}