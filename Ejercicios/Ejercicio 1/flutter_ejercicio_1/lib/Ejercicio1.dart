import 'package:flutter/material.dart';
import 'Ejercicio2.dart';

class Ejercicio1 extends StatelessWidget {
  const Ejercicio1({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.purple,
              width: 50,
              height: 50,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.yellow,
              width: 50,
              height: 50,
            ),
            Container(
              color: Colors.orange,
              width: 50,
              height: 50,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.red,
              width: 50,
              height: 50,
            ),
            Container(
              color: Colors.green,
              width: 50,
              height: 50,
            ),
            Container(
              color: Colors.blue,
              width: 50,
              height: 50,
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Ejercicio2()),
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
    );
  }
}
