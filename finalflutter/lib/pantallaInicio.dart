// ignore: file_names
import 'package:finalflutter/pantallaJuego.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class pantallaInicial extends StatefulWidget {
  const pantallaInicial({super.key});

  @override
  State<pantallaInicial> createState() => _Inicio();
}

class _Inicio extends State<pantallaInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[200],
      appBar: AppBar(
        title: const Text('Reto Calculadora'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            minimumSize: MaterialStateProperty.all(Size(300, 200)),
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
      ),
    );
  }
}