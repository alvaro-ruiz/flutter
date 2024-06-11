// ignore_for_file: file_names
import 'package:entrega_proyecto_recuperacion/pantallaCreditos.dart';
import 'package:entrega_proyecto_recuperacion/pantallaJuego.dart';
import 'package:flutter/material.dart';

class PantallaInicial extends StatefulWidget {
  const PantallaInicial({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PantallaInicialState createState() => _PantallaInicialState();
}

class _PantallaInicialState extends State<PantallaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 186, 70, 207),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          'Reto Calculadora',
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
              builder: (context) => const pantallaCredito(),
              ),
            );
        },
      ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              '¡Bienvenido al Reto Calculadora!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const Text(
              'Podras superar las 5 primeras rondas',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all(Colors.purple),
                minimumSize: WidgetStateProperty.all(const Size(300, 200)),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const pantallajuego(),
                  ),
                );
              },
              child: const Icon(
                Icons.play_arrow,
                color: Colors.white,
                size: 64,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
