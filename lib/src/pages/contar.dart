import 'package:flutter/material.dart';

class Contar extends StatefulWidget {
  @override
  createState() => _ContarState();
}

class _ContarState extends State<Contar> {
  final _estilo = new TextStyle(fontSize: 25);
  int _contar = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Hola Inmundo'),
          centerTitle: true,
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Hola Inmundo'),
            Text(
              'Numero de Click :',
              style: _estilo,
            ),
            Text('$_contar', style: TextStyle(fontSize: 30)),
          ],
        )),
        floatingActionButton: _botones());
  }

  Widget _botones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(
          width: 20,
        ),
        FloatingActionButton(
          child: Icon(Icons.exposure_zero),
          onPressed: _cero,
        ),
        Expanded(child: SizedBox()),
        FloatingActionButton(
          child: Icon(Icons.remove),
          onPressed: _restar,
        ),
        SizedBox(
          width: 100,
        ),
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: _agregar,
        )
      ],
    );
  }

  void _agregar() {
    setState(() => _contar++);
  }

  void _restar() {
    setState(() => _contar--);
  }

  void _cero() {
    setState(() => _contar = 0);
  }
}

//floatingActionButtonLocation:
          //FloatingActionButtonLocation.miniCenterFloat,
      //floatingActionButton: FloatingActionButton(
        //child: Icon(Icons.add),
        //onPressed: () {
         // print('Hola Inmundo');

          //setState(() {
            //_contar++;
         // });
       // },
     // ),
