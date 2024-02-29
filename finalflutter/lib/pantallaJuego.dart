import 'package:finalflutter/juego.dart';
import 'package:flutter/material.dart';

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
      ),

      body: Container(
        child: juego(),
      ),
    );
  }
} 