import 'package:flutter/material.dart';

class FormularioValidacion extends StatefulWidget {
  @override
  _FormularioValidacionState createState() => _FormularioValidacionState();
}

class _FormularioValidacionState extends State<FormularioValidacion> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _nombreController = TextEditingController();
  TextEditingController _edadController = TextEditingController();

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
        title: Text('Formulario de Validación'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TextFormField(
                controller: _nombreController,
                decoration: InputDecoration(
                  labelText: 'Nombre',
                ),
              ),
              TextFormField(
                controller: _edadController,
                decoration: InputDecoration(
                  labelText: 'Edad',
                ),
                keyboardType: TextInputType.number,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {

                    setState(() {
                      _nombre = _nombreController.text;
                      _edad = int.parse(_edadController.text);
                    });
                    _mostrarMensaje(context, 'Datos válidos');
                    
                  },
                  child: Text('Enviar'),
                ),
              ),
              Text(
                'Nombre: $_nombre',
                style: TextStyle(fontSize: 16),
              ),
              Text(
                'Edad: $_edad',
                style: TextStyle(fontSize: 16),
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
          title: Text('Mensaje'),
          content: Text(mensaje),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Aceptar'),
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
      home: FormularioValidacion(),
    );
  }
}
