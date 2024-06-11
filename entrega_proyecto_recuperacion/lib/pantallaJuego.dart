// ignore_for_file: file_names
import 'package:entrega_proyecto_recuperacion/juego.dart';
import 'package:entrega_proyecto_recuperacion/pantallaInicio.dart';
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
        backgroundColor: Colors.purple,
        title: const Text(
          'Calculadora',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
              builder: (context) => const PantallaInicial(),
              ),
            );
        },
      ),
      ),

      body: const juego(),
    );
  }
} 