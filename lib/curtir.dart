// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

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
        backgroundColor: Colors.pink,
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
