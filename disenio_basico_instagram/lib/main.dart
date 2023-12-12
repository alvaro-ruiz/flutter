import 'package:flutter/material.dart';
import 'Cabecera.dart';
import 'Cuerpo.dart';
import 'Contenedor.dart';
import 'Menu.dart';
import 'Historias.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: ListView(children: [
          Cabecera(),
          Cuerpo(),
          Historias(),
          Menu(),
          Fotos(),
        ]),
      ),
    );
  }
}
