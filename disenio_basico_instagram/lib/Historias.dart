import 'package:flutter/material.dart';

class Historias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 320,
          height: 77,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 320,
                  height: 83,
                  decoration: const BoxDecoration(color: Colors.white),
                ),
              ),
              Positioned(
                left: 5,
                top: 0,
                child: Container(
                  width: 58,
                  height: 58,
                  decoration: const ShapeDecoration(
                    image: DecorationImage(image: AssetImage('naruto.png'),
                    fit: BoxFit.fill,),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              const Positioned(
                left: 9,
                top: 63,
                child: SizedBox(
                  width: 51,
                  height: 13,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'NARUTO',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 11,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: '                           ',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 78,
                top: 0,
                child: Container(
                  width: 58,
                  height: 58,
                  decoration: const ShapeDecoration(
                    image: DecorationImage(image: AssetImage('starwar.png'),
                    fit: BoxFit.fill,),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              const Positioned(
                left: 78,
                top: 63,
                child: SizedBox(
                  width: 58,
                  height: 13,
                  child: Text(
                    'Star Wars',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 11,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 150,
                top: -1,
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: const ShapeDecoration(
                    color: Color(0xFFB9B8B8),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 151,
                top: 0,
                child: Container(
                  width: 58,
                  height: 58,
                  decoration: const ShapeDecoration(
                    image: DecorationImage(image: AssetImage('legendOfKorra.jpg'),
                    fit: BoxFit.fill,),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              const Positioned(
                left: 151,
                top: 63,
                child: SizedBox(
                  width: 58,
                  height: 13,
                  child: Text(
                    'Legend of',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 11,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 224,
                top: 0,
                child: Container(
                  width: 58,
                  height: 58,
                  decoration: const ShapeDecoration(
                    image: DecorationImage(image: AssetImage('maquillaje1.png'),
                    fit: BoxFit.fill,),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              const Positioned(
                left: 224,
                top: 63,
                child: SizedBox(
                  width: 58,
                  height: 13,
                  child: Text(
                    'Instant Cru',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 11,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 297,
                top: 0,
                child: Container(
                  width: 58,
                  height: 58,
                 decoration: const ShapeDecoration(
                    image: DecorationImage(image: AssetImage('winnie.jfif'),
                    fit: BoxFit.fill,),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              const Positioned(
                left: 297,
                top: 63,
                child: SizedBox(
                  width: 58,
                  height: 13,
                  child: Text(
                    'Winnie the',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 11,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 370,
                top: 0,
                child: Container(
                  width: 58,
                  height: 58,
                  decoration: const ShapeDecoration(
                    image: DecorationImage(image: AssetImage('themando.jpg'),
                    fit: BoxFit.fill,),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              const Positioned(
                left: 370,
                top: 63,
                child: SizedBox(
                  width: 58,
                  height: 13,
                  child: Text(
                    'The Mandal',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
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