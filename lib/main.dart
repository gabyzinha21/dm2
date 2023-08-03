// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const PaginaInicial());
}

class PaginaInicial extends StatelessWidget {
  const PaginaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     routes: {
      '/':(context) => Home(),
      '/Contador':(context) => Contador(),
      '/Curtir':(context) => Curtir(),
     },
    );
  }
}

class Curtir extends StatelessWidget {
  const Curtir({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Curtir"),
      ),
      body: Center(
        child: Column(
          children: [
            IconButton(
              iconSize: 40,
              icon: Icon(Icons.favorite_outline),
              onPressed: () {},
            ),
          ],
        ),
      )
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar: AppBar (
        title: Text("Home🏡"),
        backgroundColor: Color.fromARGB(225, 255, 81, 81),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.calculate, size: 36),
            title: Text("Contador"),
            subtitle: Text("Exemplo de incremento e decremento"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.pushNamed(context, '/Contador');
            },
          ),

          ListTile(
            leading: Icon(Icons.favorite, size: 36),
            title: Text("Curtir"),
            subtitle: Text("Exemplo de curtir e descurtir"),
            trailing: Icon(Icons.chevron_right),
             onTap: () {
              Navigator.pushNamed(context, '/Curtir');
            },
          ),
        ],
      ),
    );
  }
}


class Contador extends StatefulWidget {
  const Contador ({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
   int x = 100;

  @override
  Widget build(BuildContext context) {
   
    
    return Scaffold(
      appBar: AppBar(
        title: Text("My App <3"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(x. toString()),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  x = x+1;
                });
              },
              child: Text("incrementar"),
            ),
           
            ElevatedButton(
              onPressed: () {
               setState(() {
                  x = x-1;
                });
              },
              child: Text("decrementa"),
            ),
          ],
        ),
      ),
    );
  }
}
