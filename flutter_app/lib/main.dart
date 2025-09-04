import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'views/homeScreen.dart';
import 'viewModels/usuarioViewModel.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => UsuarioViewModel(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
