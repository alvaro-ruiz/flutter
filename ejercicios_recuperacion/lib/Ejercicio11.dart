// ignore_for_file: file_names
import 'package:flutter/material.dart';
import 'package:ejercicios_recuperacion/ejercicio9.dart';

class FormularioValidacion extends StatefulWidget {
  const FormularioValidacion({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _FormularioValidacionState createState() => _FormularioValidacionState();
}

class _FormularioValidacionState extends State<FormularioValidacion> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nombreController = TextEditingController();
  final TextEditingController _edadController = TextEditingController();

  String _nombre = '';
  int _edad = 0;

  @override
  void dispose() {
    _nombreController.dispose();
    _edadController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Formulario de Validación'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const ejercicio9(), // Navega a la página de búsqueda de juegos al hacer clic
              ),
            );
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                controller: _nombreController,
                decoration: const InputDecoration(
                  labelText: 'Nombre',
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, ingrese su nombre.';
                  }
                  if (!RegExp(r'^[a-zA-Z]+$').hasMatch(value)) {
                    return 'El nombre solo debe contener letras.';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _edadController,
                decoration: const InputDecoration(
                  labelText: 'Edad',
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Por favor, ingrese su edad.';
                  }
                  final edad = int.tryParse(value);
                  if (edad == null || edad <= 0) {
                    return 'La edad debe ser un número válido mayor que 0.';
                  }
                  return null;
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      setState(() {
                        _nombre = _nombreController.text;
                        _edad = int.parse(_edadController.text);
                      });
                      // Si la validación es exitosa, muestra el mensaje 'Datos Correctos'
                      _mostrarMensaje(context, 'Datos Correctos');
                    } else {
                      // Si la validación falla, muestra el mensaje 'Datos Incorrectos'
                      _mostrarMensaje(context, 'Datos Incorrectos');
                    }
                  },
                  child: const Text('Enviar'),
                ),
              ),
              Text(
                'Nombre: $_nombre',
                style: const TextStyle(fontSize: 16),
              ),
              Text(
                'Edad: $_edad',
                style: const TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void _mostrarMensaje(BuildContext context, String mensaje) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Mensaje'),
          content: Text(mensaje),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('Aceptar'),
            ),
          ],
        );
      },
    );
  }
}

class Ejercicio11 extends StatelessWidget {
  const Ejercicio11({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Formulario de Validación',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FormularioValidacion(),
    );
  }
}