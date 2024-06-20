// ignore_for_file: file_names
import 'dart:async';

import 'package:examen_flutter/Pantallas/PanatallaPrincipal.dart';
import 'package:examen_flutter/Pantallas/PantallaInicio.dart';
import 'package:flutter/material.dart';

class PantallaCreditos extends StatefulWidget {
  const PantallaCreditos({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PantallaCreditosState createState() => _PantallaCreditosState();
}

class _PantallaCreditosState extends State<PantallaCreditos> {

  void startTimer() {
    Timer(const Duration(seconds: 10), () {
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 48, 47, 48),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 20, 20, 20),
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Pantalla Creditos',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 48, 47, 48),
              ),
              child: Text(
                'Pantallas',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: const Text('Inicio'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const  PantallaInicial() // Navega a la página de búsqueda de juegos al hacer clic
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Principal'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const  PantallaPrincipal() // Navega a la página de búsqueda de juegos al hacer clic
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Creditos'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const  PantallaCreditos() // Navega a la página de búsqueda de juegos al hacer clic
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Column(
          children: [
            Text(
              'Álvaro Ruiz Blánquez',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}