import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 320,
          height: 36,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 320,
                  height: 36,
                  decoration: const BoxDecoration(color: Color(0xFFFFFCFC)),
                ),
              ),
              Positioned(
                left: 21,
                top: 9,
                child: SizedBox(
                  width: 18,
                  height: 18,
                  child: Image.asset('Grid.png', 
                         fit: BoxFit.cover, 
                  ),
                ),
              ),
              Positioned(
                left: 150,
                top: 8,
                child: SizedBox(
                  width: 20,
                  height: 20,
                  child: Image.asset('reel.png', 
                         fit: BoxFit.cover, 
                  ),
                ),
              ),
              Positioned(
                left: 279,
                top: 8,
                child: SizedBox(
                  width: 20,
                  height: 20,
                  child: Image.asset('mencionados.png', 
                         fit: BoxFit.cover, 
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