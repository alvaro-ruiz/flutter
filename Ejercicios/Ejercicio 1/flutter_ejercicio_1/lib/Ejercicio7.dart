import 'package:flutter/material.dart';

class Ejercicio7 extends StatelessWidget {
  const Ejercicio7({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Drawer Personalizado'),
      ),
      drawer: const CustomDrawer(),
      body: const Center(
        child: Text('Contenido de la página principal'),
      ),
    );
  }
}

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text('Alvaro'),
            accountEmail: Text('aaruizblanquez@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/Napoleon.jpg'),
            ),
          ),
          ListTile(
            title: const Text('Star'),
            leading: const Icon(Icons.star),
            onTap: () {
              // Acción al hacer clic en Elemento 1
              Navigator.pop(context); // Cierra el drawer
            },
          ),
          ListTile(
            title: const Text('Favorite'),
            leading: const Icon(Icons.favorite),
            onTap: () {
              // Acción al hacer clic en Elemento 2
              Navigator.pop(context); // Cierra el drawer
            },
          ),
          ListTile(
            title: const Text('Music'),
            leading: const Icon(Icons.music_note),
            onTap: () {
              // Acción al hacer clic en Elemento 3
              Navigator.pop(context); // Cierra el drawer
            },
          ),
          ListTile(
            title: const Text('Camera'),
            leading: const Icon(Icons.camera),
            onTap: () {
              // Acción al hacer clic en Elemento 4
              Navigator.pop(context); // Cierra el drawer
            },
          ),
          ListTile(
            title: const Text('Map'),
            leading: const Icon(Icons.map),
            onTap: () {
              // Acción al hacer clic en Elemento 5
              Navigator.pop(context); // Cierra el drawer
            },
          ),
        ],
      ),
    );
  }
}
