import 'package:flutter/material.dart';

class Ejercicio3 extends StatelessWidget {
  const Ejercicio3({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Contenedor Personalizado'),
        ),
        body: const Center(
          child: CustomContainer(
            imagePath: 'assets/Napoleon.jpg',
            text: 'Napoleon mirando al vacio',
          ),
        ),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  final String imagePath;
  final String text;

  const CustomContainer({super.key, 
    required this.imagePath,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400, // Ancho del contenedor
      decoration: BoxDecoration(
        color: Colors.blue, // Color de fondo del contenedor
        borderRadius: BorderRadius.circular(10), // Borde redondeado
      ),
      child: Column(
        children: [
          Image.asset(
            imagePath,
            width: 100, // Ancho de la imagen
            height: 100, // Alto de la imagen
          ),
          const SizedBox(height: 10), // Espacio entre la imagen y el texto
        ],
      ),
    );
  }
}

class Contenedor extends StatelessWidget {
  final color;
  final alto;
  final ancho;
  final texto;
  final padding;
  final alignment;

  const Contenedor({super.key, 
    this.color,
    this.alto,
    this.ancho,
    this.texto,
    this.padding,
    this.alignment,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: ancho,
      height: alto,
      padding: padding, // Aplicar el padding personalizado
      alignment: alignment, // Aplicar la alineación personalizada
      child: Center(
        child: Text(texto),
      ),
    );
  }
}
