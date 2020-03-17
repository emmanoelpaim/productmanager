import 'package:flutter/material.dart';

class AddProjectScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Project"),
        centerTitle: true,
      ),
      body: Container(
        //padding: EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: <Widget>[
              Text("Projeto",style: TextStyle(fontSize: 30.0),),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Digite o nome do Projeto',
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(
            context
          );
        },
        child: Icon(Icons.save),
        backgroundColor: Colors.green,
      ),
    );
  }
}
