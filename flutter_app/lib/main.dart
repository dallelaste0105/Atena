import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'viewModels/login.dart';
import 'views/loginScreen.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => LoginViewModel(),
      child: MaterialApp(home: LoginScreen()),
    ),
  );
}
