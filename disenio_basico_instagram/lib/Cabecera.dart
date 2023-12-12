import 'package:flutter/material.dart';
import 'SegundaPantalla.dart';

class Cabecera extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 320,
          height: 35,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 320,
                  height: 567,
                  decoration: const BoxDecoration(color: Color(0xFFFFFEFE)),
                ),
              ),
              Positioned(
                left: 11,
                top: 13,
                child: SizedBox(
                  width: 7.07,
                  height: 13.36,
                  child: Stack(
                    children: [
                      SizedBox(
                        width: 10,
                        height: 14,
                        child: Image.asset('flecha.jpg', 
                                fit: BoxFit.cover, 
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const Positioned(
                left: 93,
                top: 12,
                child: SizedBox(
                  width: 118,
                  height: 14,
                  child: Text(
                    'colourpopcosmetics\n',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 205,
                top: 16,
                child: SizedBox(
                  width: 10,
                  height: 10,
                  child: Icon(
                    Icons.verified,
                    size: 10,
                    color: Colors.blue,
                  ) 
                ),
              ),
              Positioned(
                left: 288,
                top: 15,
                 child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SegundaPantalla()),
                        );
                    },
                    child: SizedBox(
                      width: 12,
                      height: 4,
                      child: Image.asset('puntos.jpg',
                        fit: BoxFit.cover, ),
                    ),
                  ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}