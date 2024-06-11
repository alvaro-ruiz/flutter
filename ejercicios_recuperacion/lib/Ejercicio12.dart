// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'dart:math';

class Ejercicio12 extends StatefulWidget {
  const Ejercicio12({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AdivinanzaScreenState createState() => _AdivinanzaScreenState();
}

class _AdivinanzaScreenState extends State<Ejercicio12> {
  late int _numeroSecreto;
  int _intentos = 0;
  // ignore: prefer_final_fields
  TextEditingController _controller = TextEditingController();
  String _mensaje = '';

  @override
  void initState() {
    super.initState();
    _generarNumeroSecreto();
  }

  void _generarNumeroSecreto() {
    // Generamos un número aleatorio entre 1 y 100
    _numeroSecreto = Random().nextInt(100) + 1;
  }

  void _verificarNumero(String valor) {
    setState(() {
      _intentos++;
      int? numero = int.tryParse(valor);
      if (numero != null) {
        if (numero == _numeroSecreto) {
          _mensaje = '¡Felicidades! Has adivinado el número $_numeroSecreto en $_intentos intentos.';
        } else if (numero < _numeroSecreto) {
          _mensaje = 'El número es mayor. Inténtalo de nuevo.';
        } else {
          _mensaje = 'El número es menor. Inténtalo de nuevo.';
        }
      } else {
        _mensaje = 'Por favor, ingresa un número válido.';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Adivinanza'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Adivina el número (del 1 al 100)',
              style: TextStyle(fontSize: 20.0),
            ),
            const SizedBox(height: 20.0),
            TextField(
              controller: _controller,
              keyboardType: TextInputType.number,
              textAlign: TextAlign.center,
              decoration: const InputDecoration(
                hintText: 'Ingresa un número',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10.0),
            ElevatedButton(
              onPressed: () => _verificarNumero(_controller.text),
              child: const Text('Comprobar'),
            ),
            const SizedBox(height: 20.0),
            Text(
              _mensaje,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16.0),
            ),
          ],
        ),
      ),
    );
  }
}