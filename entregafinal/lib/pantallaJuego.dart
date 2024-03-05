// ignore: file_names
import 'package:entregafinal/juego.dart';
import 'package:entregafinal/pantallaCreditos.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class pantallajuego extends StatefulWidget {
  const pantallajuego({super.key});

  @override
  State<pantallajuego> createState() => _PantallaJuego();
}

class _PantallaJuego extends State<pantallajuego> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[200],
      appBar: AppBar(
        title: const Text('Calculadora'),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
              builder: (context) => const pantallaCredito(),
              ),
            );
        },
      ),
      ),

      body: const juego(),
    );
  }
} 