import 'package:flutter/material.dart';
import 'package:flutter_app/viewModels/userViewModel.dart';

class homeView extends StatefulWidget {
  @override
  _homeViewState createState() => _homeViewState();
}

class _homeViewState extends State<homeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Scaffold Padrão')),
      body: Center(child: Text('Conteúdo aqui')),
    );
  }}