// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';

class Ejercicio10 extends StatefulWidget {
  const Ejercicio10({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RandomColorsState createState() => _RandomColorsState();
}

class _RandomColorsState extends State<Ejercicio10> {
  int points = 0;
  late String randomName;
  late Color randomColor;
  var colorNames = ['azul', 'verde', 'naranja', 'rosa', 'rojo', 'amarillo', 'morado'];
  var colorHex = [
    const Color(0xFF0000FF),
    const Color(0xFF00FF00),
    const Color(0xFFFF914D),
    const Color(0xFFFF66C4),
    const Color(0xFFFF0000),
    const Color(0xFFFBC512),
    const Color(0xFF800080)
  ];
  int timerDuration = 1500;
  int pointsThreshold = 5;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    getRandomColor();
    getRandomName();
    _startTimer();
  }

  @override
  void dispose() {
    _timer.cancel(); // Cancelar el temporizador al descartar el widget.
    super.dispose();
  }

  void _startTimer() {
    _timer = Timer.periodic(Duration(milliseconds: timerDuration), (timer) {
      getRandomColor();
      getRandomName();
      if (mounted) {
        setState(() {});
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Juego colores'),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Puntos: $points',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  onGiftTap(randomName, randomColor);
                },
                child: Column(
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      width: 120,
                      color: randomColor,
                      height: 120,
                    ),
                    Text(
                      randomName,
                      style: TextStyle(
                          color: randomColor,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void getRandomColor() {
    Random random = Random();
    int randomNumber = random.nextInt(colorHex.length);
    randomColor = colorHex[randomNumber];
  }

  void getRandomName() {
    Random random = Random();
    int randomNumber = random.nextInt(colorHex.length);
    randomName = colorNames[randomNumber];
  }

  String hexToStringConverter(Color hexColor) {
    if (hexColor == const Color(0xFF0000FF)) {
      return 'azul';
    } else if (hexColor == const Color(0xFF00FF00)) {
      return 'verde';
    } else if (hexColor == const Color(0xFFFF914D)) {
      return 'naranja';
    } else if (hexColor == const Color(0xFFFF66C4)) {
      return 'rosa';
    } else if (hexColor == const Color(0xFFFF0000)) {
      return 'rojo';
    } else if (hexColor == const Color(0xFFFBC512)) {
      return 'amarillo';
    } else {
      return 'morado';
    }
  }

  void onGiftTap(String name, Color color) {
    var colorToString = hexToStringConverter(color);
    if (name == colorToString) {
      points++;
      if (points % pointsThreshold == 0) {
        timerDuration = (timerDuration * 0.8).toInt();
      }
    } else {
      points--;
      if (timerDuration > 500) {
        timerDuration = (timerDuration * 1.2).toInt();
      }
    }
    setState(() {});
  }
}