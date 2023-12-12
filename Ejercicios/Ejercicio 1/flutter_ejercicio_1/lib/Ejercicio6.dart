import 'package:flutter/material.dart';


class Ejercicio6 extends StatelessWidget {
  const Ejercicio6({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Zona de Aterrizaje para Helicópteros'),
        ),
        body: Center(
          child: Align(
            alignment: Alignment.topCenter, // Alinea en la parte superior y al centro
            child: Container(
              margin: const EdgeInsets.only(top: 20.0), // Margen superior para separarlo de la AppBar
              width: 100, // Ancho del contenedor
              height: 100, // Alto del contenedor
              color: Colors.blue, // Color de fondo del contenedor
              child: const Center(
                child: Text(
                  'H',
                  style: TextStyle(
                    fontSize: 48, // Tamaño de fuente
                    color: Colors.white, // Color del texto
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
