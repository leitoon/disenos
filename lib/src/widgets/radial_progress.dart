
import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class RadialProgress extends StatefulWidget {
  
  final porcentaje;
  final Color colorPrimario;
  final Color colorSecundario;
  final double grosorPrimario;
  final double grosorSecundario;

  RadialProgress({super.key, 
  required this.porcentaje,
  this.colorPrimario=Colors.blue, 
  this.colorSecundario=Colors.grey, 
   this.grosorPrimario=10.0,
   this.grosorSecundario=4.0, 
   });

  @override
  State<RadialProgress> createState() => _RadialProgressState();
}

class _RadialProgressState extends State<RadialProgress> with SingleTickerProviderStateMixin {
  
  late AnimationController controller;
  late double porcentajeAnterior;

  @override
  void initState() {
    
    porcentajeAnterior=widget.porcentaje;
    controller= AnimationController(vsync: this,duration: Duration(milliseconds: 200));



    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    controller.forward(from: 0.0);
    final diferenciaAnimar=widget.porcentaje - porcentajeAnterior;
    porcentajeAnterior=widget.porcentaje;
    return AnimatedBuilder(
      animation: controller, 
      builder: (BuildContext context,Widget? child)
      {
        final animValue = controller.value; 
        return Container
     (
       padding: const EdgeInsets.all(10.0),
      width: double.infinity,
      height: double.infinity, 
      child: CustomPaint
      (
       painter:_MiRadialProgress( (widget.porcentaje-diferenciaAnimar) + (diferenciaAnimar*animValue),
       widget.colorPrimario,
       widget.colorSecundario,
       widget.grosorPrimario,
       widget.grosorSecundario,
       
        )
      ),
     );
      }
      );
    
  }
}



class _MiRadialProgress extends CustomPainter{
  final porcentaje;
  final Color colorPrimario;
  final Color colorSecundario;
  final double grosorPrimario;
  final double grosorSecundario;


_MiRadialProgress(
  this.porcentaje, 
  this.colorPrimario, 
  this.colorSecundario, 
  this.grosorPrimario,
  this.grosorSecundario, 
  
  );


@override
  void paint(Canvas canvas, Size size) {
    final Rect rect=Rect.fromCircle(
      center: Offset(0,0), 
      radius: 180);
    final Gradient gradiente= LinearGradient(
      colors: 
      [
        Color(0xffc012ff),
        Color(0xff6d05e8),
        Colors.red
      ]);
    //circulo completo
    final paint= Paint()
    ..strokeWidth=grosorSecundario
    ..color= colorSecundario
   
    .. style = PaintingStyle.stroke;
    final Offset center= Offset(size.width*0.5, size.height*0.5);
    final double radio= min(size.width*0.5, size.height*0.5);

    canvas.drawCircle(center, radio, paint);

    //arco
    final paintArco= Paint()
    ..strokeWidth=grosorPrimario
    //..color= colorPrimario
    ..shader = gradiente.createShader(rect)
    ..strokeCap = StrokeCap.round
    .. style = PaintingStyle.stroke;

      //parte del llenado
      double arcAngle= 2*pi*(porcentaje/100);
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radio), 
        -pi/2, 
        arcAngle, 
        false, 
        paintArco);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) =>true;
  
}