import 'package:flutter/material.dart';

class Cuerpo extends StatelessWidget {
  const Cuerpo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 320,
          height: 255,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: -52,
                child: Container(
                  width: 320,
                  height: 567,
                  decoration: const BoxDecoration(color: Color(0xFFFFFEFE)),
                ),
              ),
              const Positioned(
                left: 186,
                top: 17,
                child: SizedBox(
                  width: 38,
                  height: 14,
                  child: Text(
                    '8.2M',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 258,
                top: 17,
                child: SizedBox(
                  width: 39,
                  height: 14,
                  child: Text(
                    '1,754\n',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 177,
                top: 31,
                child: SizedBox(
                  width: 55,
                  height: 11,
                  child: Text(
                    'Followers',
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
                left: 249,
                top: 32,
                child: SizedBox(
                  width: 55,
                  height: 11,
                  child: Text(
                    'Followers',
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
                left: 121,
                top: 32,
                child: SizedBox(
                  width: 33,
                  height: 11,
                  child: Text(
                    'Posts\n',
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
                left: 118,
                top: 16,
                child: SizedBox(
                  width: 39,
                  height: 14,
                  child: Text(
                    '7,850\n',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 10,
                top: 91,
                child: SizedBox(
                  width: 122,
                  height: 17,
                  child: Text(
                    'ColourPop Cosmetic',
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
                left: 10,
                top: 126,
                child: SizedBox(
                  width: 54,
                  height: 9,
                  child: Text(
                    'Made in LA\n',
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
              const Positioned(
                left: 10,
                top: 140,
                child: SizedBox(
                  width: 59,
                  height: 13,
                  child: Text(
                    'Cruelty Free',
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
              const Positioned(
                left: 10,
                top: 158,
                child: SizedBox(
                  width: 74,
                  height: 10,
                  child: Text(
                    '#ColourPopMe',
                    style: TextStyle(
                      color: Color(0xFF264C7A),
                      fontSize: 10,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 10,
                top: 173,
                child: SizedBox(
                  width: 160,
                  height: 17,
                  child: Text(
                    'likeshop.me/colourpopcosmetics',
                    style: TextStyle(
                      color: Color(0xFF264C7A),
                      fontSize: 10,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 10,
                top: 110,
                child: SizedBox(
                  width: 68,
                  height: 11,
                  child: Text(
                    'Health/Beauty',
                    style: TextStyle(
                      color: Color(0xFF848383),
                      fontSize: 10,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 10,
                top: 0,
                child: Container(
                  width: 82,
                  height: 82,
                  decoration: const ShapeDecoration(
                    image: DecorationImage(image: AssetImage('logo.jfif'),
                    fit: BoxFit.fill,),
                    shape: OvalBorder(),
                  ),
                ),
              ),
              Positioned(
                left: 24,
                top: 205,
                child: Container(
                  width: 81,
                  height: 25,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFFFFDFD),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 1, color: Color(0xFFBDB8B8)),
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 31,
                top: 210,
                child: SizedBox(
                  width: 57,
                  height: 13,
                  child: Text(
                    'Following\n',
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
              Positioned(
                left: 113,
                top: 205,
                child: Container(
                  width: 81,
                  height: 25,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFFFFDFD),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 1, color: Color(0xFFBEB8B8)),
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 126,
                top: 210,
                child: SizedBox(
                  width: 52,
                  height: 13,
                  child: Text(
                    'Message',
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
              Positioned(
                left: 202,
                top: 205,
                child: Container(
                  width: 60,
                  height: 25,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFFFFDFD),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 1, color: Color(0xFFBEB8B8)),
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 270,
                top: 205,
                child: Container(
                  width: 25,
                  height: 25,
                  decoration: ShapeDecoration(
                    color: const Color(0xFFFFFDFD),
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(width: 1, color: Color(0xFFBEB8B8)),
                      borderRadius: BorderRadius.circular(3),
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 219,
                top: 211,
                child: SizedBox(
                  width: 31,
                  height: 13,
                  child: Text(
                    'Email\n',
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
              Positioned(
                left: 88.09,
                top: 223.12,
                child: Transform(
                  transform: Matrix4.identity()..translate(0.0, 0.0)..rotateZ(-1.59),
                  child: SizedBox(
                    width: 10,
                    height: 14,
                    child: Image.asset('flechaPaBajo.jpg', 
                         fit: BoxFit.cover, 
                   )
                  ),
                ),
              ),
              Positioned(
                left: 277.0,
                top: 210.0,
                child: SizedBox(
                  width: 10,
                  height: 14,
                  child: Image.asset('flechaPaBajo.jpg', 
                         fit: BoxFit.cover, 
                   )
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}