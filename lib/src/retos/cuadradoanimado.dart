

import 'package:flutter/material.dart';

class CuadradoAnimadoReto extends StatefulWidget {

  @override
  State<CuadradoAnimadoReto> createState() => _CuadradoAnimadoRetoState();
}

class _CuadradoAnimadoRetoState extends State<CuadradoAnimadoReto> with SingleTickerProviderStateMixin{
  late AnimationController controller;


  late Animation<double> moverDerecha;
  late Animation<double> moverArriba;
  late Animation<double> moverIzquierda;
  late Animation<double> moverAbajo;
  
  @override
  void initState() {
    super.initState();
    controller=AnimationController(vsync: this,duration: Duration(microseconds: 4500));

    moverDerecha=Tween(begin: 0.0,end: 100.0).animate(
      controller
    );
    
  }

  @override
  void dispose()
  {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    
    controller.forward();
    return AnimatedBuilder(
      child: _Rectangulo(),
      animation: controller, 
      builder:
      (BuildContext context, Widget? child)
      {
        return Transform.translate(
          offset: Offset(moverDerecha.value, 0),
          child: child,
          );
      }
       );
  }
}



class _Rectangulo extends StatelessWidget {
    @override
    Widget build(BuildContext context) {
    return Container(
       width: 70,
       height: 70,
       decoration: const BoxDecoration(
         color: Colors.blue
       ),
     );
   }
}