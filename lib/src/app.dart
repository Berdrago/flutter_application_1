import 'package:flutter/material.dart';
//import 'package:flutter_application_1/src/pages/home.dart';
import 'package:flutter_application_1/src/pages/contar.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: Contar(),
      ),
    );
  }
}
