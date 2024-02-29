import 'dart:math';
import 'dart:async';
import 'package:finalflutter/pantallaInicio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class juego  extends StatefulWidget {
  const juego ({super.key});

  _GenerateGame createState() => _GenerateGame();
}


class _GenerateGame extends State<juego>{
  int rondas = 1;
  int numerosAdd = 3;
  int correcta = 0;
  int sumaIngresada  = 0;
  bool mostrandoNumeros  = true;
  bool respuestaCorrecta  = false;
  List<int> numerosGenerados = [];
  int maxRonda = 0;

  @override
  void initState() {
    super.initState();
    getRandomNumber();
    _getMaxRonda();
  }

  void _setMaxRonda(int valor) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      maxRonda = valor;
      prefs.setInt("1", valor);
    });
  }

  void _getMaxRonda() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      maxRonda = prefs.getInt('1') ?? 0;
    });
  }

  void getRandomNumber() {
    correcta = 0;
    numerosGenerados.clear();

    for (int i = 0; i < numerosAdd; i++) {
      int numero = Random().nextInt(50) + 1;
      correcta += numero;
      numerosGenerados.add(numero);
    }

    Timer(Duration(seconds: 5), () {
      setState(() {
        mostrandoNumeros = false;
      });
    });
  }

  void verificaRespuesta() {
    if (sumaIngresada == correcta) {
      respuestaCorrecta = true;
      rondas++;
    } else {
      setState(() {
        _mostrarDialogo();
      });
    }
  }

  void _nextNivel() {
    getRandomNumber();
  }

  Future<void> _mostrarDialogo() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Respuesta Incorrecta'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Maxima Ronda: $maxRonda'),
                Text('La respuesta ingresada no es correcta.'),
                Text('¿Qué deseas hacer?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: Text('Ir Inicio'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const pantallaInicial(),
                  ),
                );
              },
            ),
          ],
        );
      },
    );
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              children: [
                Text(
                'Ronda: $rondas',
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
               if (mostrandoNumeros) 
                Text (
                'Recuerda estos numeros:\n${numerosGenerados.join(", ")}',
                textAlign: TextAlign.center,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                ),
                if (!mostrandoNumeros)
                  Column(
                    children: [
                      const Text(
                        'Ingresa la suma de los numeros: ',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                      const SizedBox(height:10.0),
                      TextField(
                        keyboardType: TextInputType.number,
                        onChanged: (value) {
                          setState(() {
                            sumaIngresada = int.tryParse(value) ?? 0;
                          });
                        },
                        decoration: const InputDecoration(
                          labelText: 'Suma',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height:10.0),
                      ElevatedButton(
                        onPressed: verificaRespuesta, 
                        child: const Text('verificar')
                      ),
                      SizedBox(height: 20.0),
                    ],
                  ),
              ]
            ),          
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            getRandomNumber();
            respuestaCorrecta = false;
            sumaIngresada = 0;
            mostrandoNumeros = true;
          });
        },
        tooltip: 'Generar Números',
        child: Icon(Icons.refresh),
      ),

    );
  }
  
}
