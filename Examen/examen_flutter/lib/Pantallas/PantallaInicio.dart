// ignore_for_file: file_names
import 'package:examen_flutter/Pantallas/PanatallaPrincipal.dart';
import 'package:examen_flutter/Pantallas/PantallaCreditos.dart';
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
      backgroundColor: const Color.fromARGB(255, 48, 47, 48),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 20, 20, 20),
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          'Pantalla Inicio',
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
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
            Text(
              'El Real Madrid Club de Fútbol, más conocido simplemente como Real Madrid, es una entidad polideportiva con sede en Madrid (España). Fue registrada oficialmente como club de fútbol por sus socios el 6 de marzo de 1902 con el objeto de la práctica y desarrollo de este deporte, si bien sus orígenes datan del año 1900,10​ y su denominación de (Sociedad) Madrid Foot-ball Club de octubre de 1901, siendo el quinto club fundado en la capital.',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),

            SizedBox(
              child: Image(image: AssetImage('assets/1.png'))
            ),
          ],
        ),
      ),
    );
  }
}
