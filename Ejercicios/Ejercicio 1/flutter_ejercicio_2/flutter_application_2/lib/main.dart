import 'package:flutter/material.dart';
import 'package:flutter_application_2/Ejercicio10.dart';
import 'package:flutter_application_2/Ejercicio11.dart';
import 'package:flutter_application_2/Ejercicio12.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
            title: const Text('Ejercicio10'),
            onTap: () {
              Navigator.pop(context); 
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Ejercicio10())
              );
            },
          ),
          ListTile(
            title: const Text('Ejercicio11'),
            onTap: () {
              Navigator.pop(context); 
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Ejercicio11())
              );
            },
          ),
          ListTile(
            title: const Text('Ejercicio12'),
            onTap: () {
              Navigator.pop(context); 
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Ejercicio12())
              );
            },
          ),
        ],
      ),
    );
  }
}
