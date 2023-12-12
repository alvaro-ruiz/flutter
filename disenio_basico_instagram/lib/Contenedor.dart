
import 'package:flutter/material.dart';

class Fotos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 320,
          height: 148,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: SizedBox(
                  width: 106,
                  height: 106,
                   child: Image.asset('labios.jpg', 
                         fit: BoxFit.cover, 
                   )
                 ),
              ),
              Positioned(
                left: 107,
                top: 0,
                child: SizedBox(
                  width: 106,
                  height: 106,
                  child: Image.asset('ojos.jpg', 
                         fit: BoxFit.cover, 
                  ),
                ),
              ),
              Positioned(
                left: 214,
                top: 0,
                child: SizedBox(
                  width: 106,
                  height: 106,
                  child: Image.asset('ojos2.jpg', 
                         fit: BoxFit.cover, 
                  )
                ),
              ),
              Positioned(
                left: 0,
                top: 107,
                child: SizedBox(
                  width: 106,
                  height: 106,
                  child: Image.asset('maquillaje.jpg', 
                         fit: BoxFit.cover, 
                  )
                ),
              ),
              Positioned(
                left: 107,
                top: 107,
                child: SizedBox(
                  width: 106,
                  height: 106,
                  child: Image.asset('sombra-color-ojos.jpg', 
                         fit: BoxFit.cover, 
                  )
                ),
              ),
              Positioned(
                left: 214,
                top: 107,
                child: SizedBox(
                  width: 106,
                  height: 106,
                  child: Image.asset('imagen.jfif', 
                         fit: BoxFit.cover, 
                  )
                ),
              ),
              Positioned(
                left: 0,
                top: 214,
                child: SizedBox(
                  width: 106,
                  height: 106,
                  child: Image.asset('labios.jpg', 
                         fit: BoxFit.cover, 
                  )
                ),
              ),
              Positioned(
                left: 107,
                top: 214,
                child: SizedBox(
                  width: 106,
                  height: 106,
                  child: Image.asset('labios.jpg', 
                         fit: BoxFit.cover, 
                  )
                ),
              ),
              Positioned(
                left: 214,
                top: 214,
                child: SizedBox(
                  width: 106,
                  height: 106,
                  child: Image.asset('labios.jpg', 
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