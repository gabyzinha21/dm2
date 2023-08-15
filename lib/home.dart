// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar (
        title: Text("Home🏡"),
        backgroundColor: Color.fromARGB(209, 240, 133, 133),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.calculate, size: 36, color: Color.fromARGB(204, 33, 149, 243)),
            title: Text("Contador"),
            subtitle: Text("Exemplo de incremento e decremento"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.pushNamed(context, '/Contador');
            },
          ),

          ListTile(
            leading: Icon(Icons.favorite, size: 36, color: Colors.pink,),
            title: Text("Curtir"),
            subtitle: Text("Exemplo de curtir e descurtir"),
            trailing: Icon(Icons.chevron_right),
             onTap: () {
              Navigator.pushNamed(context, '/Curtir');
            },
          ),
          ListTile(
            leading: Icon(Icons.person, size: 36, color: Color.fromARGB(161, 238, 73, 197)),
            title: Text("Cadastrar"),
            subtitle: Text("Exemplo de Cadastro"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.pushNamed(context, '/Cadastrar');
            },
          ),
        ],
      ),
    );
  }
}