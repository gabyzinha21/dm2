// ignore_for_file: prefer_const_constructors



import 'package:flutter/material.dart';


class Cadastrar extends StatefulWidget {
  const Cadastrar({super.key});

  @override
  State<Cadastrar> createState() => _CadastrarState();
}

class _CadastrarState extends State<Cadastrar> {
  var nomeController = TextEditingController();
  var emailController = TextEditingController();
  var senhaController = TextEditingController();

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
                  controller: nomeController,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.person),
             label: Text("Informe seu nome"),
              border: OutlineInputBorder(),
            ),
          ),

          SizedBox(height: 20,),

          TextFormField(
            controller: emailController,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.email),
             label: Text("Informe seu email"),
              border: OutlineInputBorder(),
            ),
          ),

          SizedBox(height: 20,),

          TextFormField(
            controller: senhaController,
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
            onPressed:() {
              print("O botão Salvar foi clicado");
              print(nomeController.text);
              print(emailController.text);
              print(senhaController.text);
            },
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