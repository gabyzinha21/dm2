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
                TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.person),
             label: Text("Informe seu nome"),
              border: OutlineInputBorder(),
            ),
          ),

          SizedBox(height: 20,),

          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.email),
             label: Text("Informe seu email"),
              border: OutlineInputBorder(),
            ),
          ),

          SizedBox(height: 20,),

          TextFormField(
             decoration: InputDecoration(
            prefixIcon: Icon(Icons.lock),
              label: Text("Informe sua senha"),
              border: OutlineInputBorder(),
            ),
          ),
          
          SizedBox(height: 20,),

          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.today),
             label: Text("Informe sua data de nascimento"),
              border: OutlineInputBorder(),
            ),
            onTap: () {
              showDatePicker(
                context: context, 
                initialDate: DateTime.now(),
                firstDate: DateTime(1900,1,1), 
                lastDate: DateTime.now(),
                );
            },
          ),

          SizedBox(height: 20,),

          ElevatedButton( //botão de enviar//
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