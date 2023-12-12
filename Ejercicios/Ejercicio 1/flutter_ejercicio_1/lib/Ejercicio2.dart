import 'package:flutter/material.dart';
import 'Ejercicio3.dart';

class Ejercicio2 extends StatelessWidget {
  const Ejercicio2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ejemplo Texto'),
        ),
        body: const MyApp(),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: OverflowBox(
                maxWidth: double.infinity,
                maxHeight: double.infinity,
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  child: const Text(
                    "Fuente Cursiva\nLa exploración de los confines del universo nos sumerge en un viaje de descubrimientos asombrosos.\n Cuando contemplamos las vastas extensiones del espacio, nos enfrentamos a la maravilla de lo desconocido.\n Las estrellas, en su resplandor inmutable, cuentan historias de mundos lejanos y de misterios que aguardan ser revelados.",
                    style: TextStyle(fontFamily: 'Pacifico', fontStyle: FontStyle.italic),
                  ),
                ),
              ),
            ),
            Expanded(
              child: OverflowBox(
                maxWidth: double.infinity,
                maxHeight: double.infinity,
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  child: const Text(
                    "Fuente Negrita\nEn el corazón de la selva tropical, la biodiversidad florece con una exuberancia inigualable.\n La sinfonía de colores y sonidos es un testimonio de la vida en su máxima expresión.\n Cada hoja, cada criatura, contribuye a la riqueza de este ecosistema único.\n La fragancia de las flores y el zumbido constante de insectos danzan juntos en una coreografía natural.",
                    style: TextStyle(fontFamily: 'Montserrat-Bold', fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Expanded(
              child: OverflowBox(
                maxWidth: double.infinity,
                maxHeight: double.infinity,
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  child: const Text(
                    "Fuente Monoespaciada\nEn los recovecos del código fuente, la precisión y la lógica gobiernan.\n Cada línea es una instrucción cuidadosamente elaborada, y cada carácter tiene un propósito definido.\n La ejecución impecable de un programa refleja la armonía entre la mente del programador y la máquina.\n En este mundo binario, la belleza se encuentra en la simplicidad del código bien escrito.",
                    style: TextStyle(fontFamily: 'Courier New', fontFamilyFallback: ['Courier']),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Ejercicio3()),
                    );
                  },
                  child: SizedBox(
                    width: 20,
                    height: 40,
                    child: Image.asset('flecha.jpg',
                    fit: BoxFit.cover, ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}