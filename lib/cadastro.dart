// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class Cadastrar extends StatelessWidget {
  const Cadastrar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Cadastro"),
        backgroundColor: Colors.purple,
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.email),
              hintText:"Informe seu Email",
            ),
          ),
          TextField( decoration: InputDecoration(
              icon: Icon(Icons.lock),
              hintText:"Informe sua Senha",
            ),),
          SizedBox(height: 30,),
          ElevatedButton(
            onPressed:() {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.purple,
            ),
             child: Text("Salvar"),
             ),
        ],
      ),
    );
    
  }
}