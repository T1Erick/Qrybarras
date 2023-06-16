import 'dart:js';

import 'package:flutter/material.dart';
import 'package:qraplicacion/src/barras.dart';
import 'package:qraplicacion/src/codigo.dart';
import 'package:qraplicacion/src/generator.dart';
import 'package:qraplicacion/src/qr.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static final routes = {
    '/generador': (context) => Generator(),
    '/codigo' : (context)=> CodigoPage(),
    '/barra':(context) => BarrasPage(),
    '/qr': (context) => QrPage(),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: routes,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Generator(),
    );
  }
}
