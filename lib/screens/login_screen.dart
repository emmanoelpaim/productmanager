import 'package:flutter/material.dart';

import 'home_screen.dart';


class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product Manager 1.0"),
        centerTitle: true,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Text("Usuario",style: TextStyle(fontSize: 30.0),),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Digite seu Usuario',
                ),
              ),
              Text("Senha",style: TextStyle(fontSize: 30.0),),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Digite sua Senha',
                ),
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => HomeScreen(
                          )));
                },
                color: Colors.blueAccent,
                child: const Text('Entrar', style: TextStyle(color: Colors.white, fontSize: 20)),
              ),
            ],
          ),
        ),
//        transform: Matrix4.rotationZ(0.1),
      ),
    );
  }
}
