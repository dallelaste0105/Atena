import 'package:flutter/material.dart';
import 'package:flutter_app/viewModels/UsuarioViewModel.dart';
import 'package:provider/provider.dart';


class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    final user = context.watch<UsuarioViewModel>().user;

    return Scaffold(
      body: Center(child: Text(user as String))
    );
  }
}