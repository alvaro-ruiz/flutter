// ignore_for_file: file_names
import 'package:examen_flutter/Pantallas/PantallaCreditos.dart';
import 'package:examen_flutter/Pantallas/PantallaInicio.dart';
import 'package:flutter/material.dart';

class PantallaPrincipal extends StatefulWidget {
  const PantallaPrincipal({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _PantallaPrincipalState createState() => _PantallaPrincipalState();
}

class _PantallaPrincipalState extends State<PantallaPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 48, 47, 48),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 20, 20, 20),
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Pantalla Clonada',
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
                      builder: (context) =>
                          const PantallaInicial() // Navega a la página de búsqueda de juegos al hacer clic
                      ),
                );
              },
            ),
            ListTile(
              title: const Text('Clonada'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          const PantallaPrincipal() // Navega a la página de búsqueda de juegos al hacer clic
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
                      builder: (context) =>
                          const PantallaCreditos() // Navega a la página de búsqueda de juegos al hacer clic
                      ),
                );
              },
            ),
          ],
        ),
      ),
      body: GridView.count(crossAxisCount: 1, children: <Widget>[
        Row(children: [
          const SizedBox(
            width: 20,
          ),
          Container(
            height: 150,
            width: 300,
            color: Colors.white,
          ),
          const SizedBox(
            width: 50,
          ),
          Container(
            height: 100,
            width: 100,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.pink,
            ),
            alignment: Alignment.center,
            child: const Text(
              "F",
              style: TextStyle(
                fontSize: 10,
              ),
            ),
          ),
        ]),
        ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(
              width: 160,
              color: Colors.red,
            ),
            Container(
              width: 160,
              color: Colors.blue,
            ),
            Container(
              width: 160,
              color: Colors.green,
            ),
            Container(
              width: 160,
              color: Colors.yellow,
            ),
            Container(
              width: 160,
              color: Colors.orange,
            ),
          ],
        ),
        ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              width: 160,
              color: Colors.red,
            ),
            Container(
              width: 160,
              color: Colors.blue,
            ),
            Container(
              width: 160,
              color: Colors.green,
            ),
            Container(
              width: 160,
              color: Colors.yellow,
            ),
            Container(
              width: 160,
              color: Colors.orange,
            ),
          ],
        ),
      ]),
    );
  }
}
