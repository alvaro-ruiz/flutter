import 'dart:math';
import 'dart:async';
import 'package:entrega_proyecto_recuperacion/pantallaInicio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class juego  extends StatefulWidget {
  const juego ({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _GenerateGame createState() => _GenerateGame();
}


class _GenerateGame extends State<juego>{
  int rondas = 1;
  int numerosAdd = 2;
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

  Future <void> _setMaxRonda(int valor) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      prefs.setInt("maxRondas", valor);
    });
  }

  Future<void> _getMaxRonda() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      maxRonda = prefs.getInt('maxRondas') ?? 0;
    });
  }

  void getRandomNumber() {
    correcta = 0;
    numerosGenerados.clear();

    for (int i = 0; i < numerosAdd + rondas; i++) {
      int numero = Random().nextInt(20) + 1;
      correcta += numero;
      numerosGenerados.add(numero);
    }

    startTimer();
  }

  void startTimer() {
    Timer(const Duration(seconds: 5), () {
      setState(() {
        mostrandoNumeros = false;
      });
    });
  }

  void verificaRespuesta() {
    _compruebaMax();
    if (sumaIngresada == correcta) {
      respuestaCorrecta = true;
      rondas++;
      setState(() {
        _nextNivel();
      });
    } else {
      setState(() {
        _mostrarDialogIncorrecto();
      });
    }
  }

    void _compruebaMax() {
      if (rondas > maxRonda) {
        setState(() {
          maxRonda = rondas - 1;
        });
        _setMaxRonda(maxRonda);
      }
    }

  void _nextNivel() {
    getRandomNumber();
    mostrandoNumeros = true;
    _compruebaMax();
  }

  Future<void> _mostrarDialogIncorrecto() async {
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
                Text('Solucion: $correcta'),
                const Text('La respuesta ingresada no es correcta.'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Ir Inicio'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const PantallaInicial(),
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
                      const SizedBox(height: 20.0),
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
            rondas = 1;
            getRandomNumber();
            respuestaCorrecta = false;
            sumaIngresada = 0;
            mostrandoNumeros = true;
          });
        },
        tooltip: 'Generar Números',
        child: const Icon(Icons.refresh),
      ),

    );
  }
  
}
