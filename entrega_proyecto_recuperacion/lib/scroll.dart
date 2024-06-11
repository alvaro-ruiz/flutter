import 'package:entrega_proyecto_recuperacion/pantallaInicio.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class scrollVertical extends StatelessWidget {
  const scrollVertical({super.key});

   @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 186, 70, 207),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          'Lista del uno al diez',
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
      body: SingleChildScrollView(
        child: Column(
          children: List.generate(
            100,
            (index) => ListTile(
              title: Text(
                'Número ${index + 1}', 
                style: const TextStyle( color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}