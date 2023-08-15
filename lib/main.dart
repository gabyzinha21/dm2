// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'cadastro.dart';
import 'contador.dart';
import 'curtir.dart';
import 'home.dart';

void main() {
  runApp(MeuApp());
}

class MeuApp extends StatelessWidget {
  const MeuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     routes: {
      '/':(context) => Home(),
      '/Contador':(context) => Contador(),
      '/Curtir':(context) => Curtir(),
      '/Cadastrar':(context) => Cadastrar(),
     },
    );
  }
}







