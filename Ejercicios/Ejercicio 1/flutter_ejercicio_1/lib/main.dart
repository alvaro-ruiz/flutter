import 'package:flutter/material.dart';
import 'Ejercicio1.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ejercicios disposicion de flutter'),
        ),
        body: const Ejercicio1(),
      ),
    );
  }
}