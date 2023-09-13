// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class Contador extends StatefulWidget {
  const Contador ({super.key});

  @override
  State<Contador> createState() => _ContadorState();
}

class _ContadorState extends State<Contador> {
   int x = 0; 

   @override
  void initState() {
    super.initState();
    obtemValor(); // lÊ da memoria hora que abre a página
  }

  void obtemValor()  async {
    //busca um valor da memoria persistente
    final prefs = await SharedPreferences.getInstance();
    setState(() {
          x = prefs.getInt("contador") ?? 0;
    });
  }

  void salvaValor(int valor) async {
    //salva um valor da memoria persistente
     final prefs = await SharedPreferences.getInstance();
     prefs.setInt("contador", valor);
  }

  @override
  Widget build(BuildContext context) {
   
    
    return Scaffold(
      appBar: AppBar(
        title: Text("Contador"),
        backgroundColor: Color.fromARGB(214, 33, 149, 243),
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
                salvaValor(x); // manda salvar o valor de x
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