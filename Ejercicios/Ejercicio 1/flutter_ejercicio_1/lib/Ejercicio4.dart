import 'package:flutter/material.dart';

class Ejercicio4 extends StatelessWidget {
  const Ejercicio4({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Manejo de Desbordamiento de Texto'),
        ),
        body: Center(
          child: SizedBox(
            width: 200, // Ancho del campo de texto
            height: 100, // Alto del campo de texto
            child: TextField(
              decoration: const InputDecoration(
                hintText: 'Escribe aquí',
                border: OutlineInputBorder(),
              ),
              maxLines: null, // Esto permite que el texto se desborde
              style: const TextStyle(
                fontFamily: 'MiFuente', // Usa el nombre de la fuente definida en pubspec.yaml
              ),
              textInputAction: TextInputAction.done,
              controller: TextEditingController(
                text: 'Este es un texto largo que desbordará el campo de texto. ' * 100,
              ),
            ),
          ),
        ),
      ),
    );
  }
}