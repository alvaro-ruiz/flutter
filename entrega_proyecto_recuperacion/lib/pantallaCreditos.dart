import 'package:entrega_proyecto_recuperacion/pantallaInicio.dart';
import 'package:entrega_proyecto_recuperacion/scroll.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class pantallaCredito extends StatelessWidget {
  const pantallaCredito({super.key});

   @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 186, 70, 207),
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: const Text(
          'Creditos',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
              builder: (context) => const PantallaInicial(),
              ),
            );
        },
      ),
      ),

       body:SingleChildScrollView(
        child: Center( 
          child: Padding( 
            padding: const EdgeInsets.all(16.0), 
            child: Column( 
              mainAxisAlignment: MainAxisAlignment.center, 
              crossAxisAlignment: CrossAxisAlignment.start, 
              children: <Widget>[ 
                const Text( 
                  "Hecho por:", 
                  style: TextStyle(fontSize: 24, color: Colors.white), 
                  textAlign: TextAlign.center, 
                ), 
                const Text( 
                  "Álvaro Ruiz", 
                  style: TextStyle(fontSize: 18, color: Colors.white), 
                  textAlign: TextAlign.center, 
                ),
                const SizedBox(height: 20), 
                const Text(
                  "Idea: ", 
                  style: TextStyle(fontSize: 24, color: Colors.white), 
                  textAlign: TextAlign.center, 
                ), 
                const Text( 
                  "La idea de esta app nació gracias al programa de televisión de RTVE de 'Saber y Ganar', en especial a la prueba de la calculadora de dicho programa.", 
                  style: TextStyle(fontSize: 18, color: Colors.white), 
                  textAlign: TextAlign.center, 
                ), 
                const Text(
                  "Tambien continuaremos ampliando la app añadiendoo nuevos modos y un ranquin global con los resultados de diferentes reginoes.", 
                  style: TextStyle(fontSize: 18, color: Colors.white), 
                  textAlign: TextAlign.center, 
                ),
                const SizedBox(height: 30), 
                const Text(
                  "Muchas gracias por darle la oportunidad a mi app", 
                  style: TextStyle(fontSize: 20, color: Colors.white), 
                  textAlign: TextAlign.center, 
                ),
                const SizedBox(height: 20),
                const Text(
                  "Hola Francis este boton te manda a una pantalla que tiene una lista del 1 al 100 para que veas que se generar un scroll", 
                  style: TextStyle(fontSize: 18, color: Colors.white), 
                  textAlign: TextAlign.center, 
                ),
                ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.purple),
                  minimumSize: WidgetStateProperty.all(const Size(50, 50)),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const scrollVertical(),
                    ),
                  );
                },
                child: const Icon(
                  Icons.play_arrow,
                  color: Colors.white,
                  size: 32,
                ),
                ),
              ], 
            ), 
          ), 
        ), 
      ), 
    );
  }
}