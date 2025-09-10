import 'package:flutter/material.dart';
import 'package:flutter_app/viewModels/userViewModel.dart';
import 'package:flutter_app/views/homeView.dart';
import 'package:flutter_app/views/loginView.dart';

int id = 0;
final TextEditingController name = TextEditingController();
final TextEditingController email = TextEditingController();
final TextEditingController password = TextEditingController();

class signupView extends StatefulWidget {
  @override
  _signupViewState createState() => _signupViewState();
}

class _signupViewState extends State<signupView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sign Up')),
      body: Center(child: Column(
        children: [
          TextField(controller: name),
          TextField(controller: email),
          TextField(controller: password),
          ElevatedButton(onPressed: (){signup(id, name.text, email.text, password.text);
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => homeView()));},
                child: Text('Sign Up'))
        ]
      )
      ),
floatingActionButton: FloatingActionButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => loginView()));}, child: Text("Login")),
    );
  }}