import 'package:flutter/material.dart';

import 'add_project_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista Projetos"),
        centerTitle: true,
      ),
      body: Container(
          //padding: EdgeInsets.all(8.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
        children: <Widget>[
              cardProject('Projeto: Festa 1'),
              cardProject('Projeto: Festa 2'),
              cardProject('Projeto: Festa 3'),
              cardProject('Projeto: Festa 4'),
        ],
      ),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => AddProjectScreen(),
            ),
          );
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.green,
      ),
    );
  }
}

class cardProject extends StatelessWidget {
  cardProject(this.title);
  final String title;

  @override
  Widget build(BuildContext context) {
    print(context);
    return Card(
      child: InkWell(
        child: ListTile(
          title: Text(this.title),
        ),
      ),
    );
  }
}
