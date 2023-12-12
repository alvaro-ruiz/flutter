import 'package:flutter/material.dart';

class SegundaPantalla extends StatelessWidget {
  const SegundaPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Creditos'),
      ),
      body: const Center(
        child: Text('Realizado por Álvaro Ruiz Blánquez, iconos y fonts sacados de google fonts y fotos sacadas de google imagenes',
        style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontFamily: 'fonts/SauceTomato.otf',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
        ),
      ),
    );
  }
}