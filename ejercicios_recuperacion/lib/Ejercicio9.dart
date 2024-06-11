// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:ejercicios_recuperacion/ejercicio10.dart';
import 'package:ejercicios_recuperacion/ejercicio11.dart';
import 'package:ejercicios_recuperacion/ejercicio12.dart';

// ignore: camel_case_types
class ejercicio9 extends StatelessWidget {
  const ejercicio9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Ejercicio 9'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Ejercicios',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: const Text('Ejercicio 10'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Ejercicio10(), // Navega a la página de búsqueda de juegos al hacer clic
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Ejercicio 11'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Ejercicio11(), // Navega a la página de búsqueda de juegos al hacer clic
                  ),
                );
              },
            ),
            ListTile(
              title: const Text('Ejercicio 12'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Ejercicio12(), // Navega a la página de búsqueda de juegos al hacer clic
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          ElevatedButton(
            onPressed: () {
            },
            child: const Text('Elevated Button'),
          ),
          TextButton(
            onPressed: () {
            },
            child: const Text('Text Button'),
          ),
          OutlinedButton(
            onPressed: () {
            },
            child: const Text('Outline Button'),
          ),
          IconButton(
            onPressed: () {

            },
            icon: const Icon(Icons.access_alarm),
            tooltip: 'Icon Button',
          ),
          BackButton(
            onPressed: () {
            },
          ),
          CloseButton(
            onPressed: () {
            },
          ),
        ],
      ),
    );
  }
}