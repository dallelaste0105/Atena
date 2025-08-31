import 'package:flutter/material.dart';
import 'package:flutter_app/viewModels/login.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app/viewModels/login.dart';

class LoginScreen extends StatelessWidget {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<LoginViewModel>();

    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(controller: nameController, decoration: InputDecoration(labelText: 'Nome')),
            TextField(controller: emailController, decoration: InputDecoration(labelText: 'E-mail')),
            TextField(controller: passwordController, decoration: InputDecoration(labelText: 'Senha'), obscureText: true),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                context.read<LoginViewModel>().login(
                  nameController.text,
                  emailController.text,
                  passwordController.text,
                );
              },
              child: Text('Entrar'),
            ),
            if (viewModel.error != null)
              Text(viewModel.error!, style: TextStyle(color: Colors.red)),
            if (viewModel.user != null)
              Text('Bem-vindo, ${viewModel.user!.name}'),
          ],
        ),
      ),
    );
  }
}