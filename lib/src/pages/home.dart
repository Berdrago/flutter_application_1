import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final estilo = new TextStyle(fontSize: 25);
  final contar = 5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Numero de Click :',
            style: estilo,
          ),
          Text('$contar', style: TextStyle(fontSize: 30)),
        ],
      )),
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          print('Hola Inmundo');
        },
      ),
    );
  }
}
