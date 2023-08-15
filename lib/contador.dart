// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
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
        backgroundColor: Color.fromARGB(193, 33, 149, 243),
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