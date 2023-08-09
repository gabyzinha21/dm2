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
      '/Cadastrar':(context) => Cadastrar(),
     },
    );
  }
}

class Curtir extends StatefulWidget {
  const Curtir({super.key});

  @override
  State<Curtir> createState() => _CurtirState();
}

class _CurtirState extends State<Curtir> {
  bool curtiu = false;
  int curtir = 0;
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("💕Curtir💕"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              iconSize: 128,
             icon: curtiu == true 
             ? Icon(Icons.favorite, color: Colors.pink)
             : Icon (Icons.favorite_outline,color: Colors.black),
              
            
              onPressed: () {
                setState(() {
                  curtiu = true;
                });
                setState(() {
                  curtir = curtir+1;
                });
              },
            ),
            Text("Curtidas: $curtir "),
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
        backgroundColor: Color.fromARGB(209, 240, 133, 133),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.calculate, size: 36, color: Colors.blue),
            title: Text("Contador"),
            subtitle: Text("Exemplo de incremento e decremento"),
            trailing: Icon(Icons.chevron_right),
            onTap: () {
              Navigator.pushNamed(context, '/Contador');
            },
          ),

          ListTile(
            leading: Icon(Icons.favorite, size: 36, color: Colors.red,),
            title: Text("Curtir"),
            subtitle: Text("Exemplo de curtir e descurtir"),
            trailing: Icon(Icons.chevron_right),
             onTap: () {
              Navigator.pushNamed(context, '/Curtir');
            },
          ),
          ListTile(
            leading: Icon(Icons.person, size: 36, color: Color.fromARGB(162, 175, 238, 73)),
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
        title: Text("Contador 123..."),
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

class Cadastrar extends StatelessWidget {
  const Cadastrar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Cadastro"),
      ),
      
    );
    
  }
}
