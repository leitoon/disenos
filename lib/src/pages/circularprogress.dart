import 'dart:math';

import 'package:flutter/material.dart';

class CirculasProgressPage extends StatefulWidget {
  const CirculasProgressPage({super.key});

  @override
  State<CirculasProgressPage> createState() => _CirculasProgressPageState();
}

class _CirculasProgressPageState extends State<CirculasProgressPage> {
  double porcentaje =10;
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      floatingActionButton: FloatingActionButton(
        onPressed: ()
        {
          porcentaje+=10;
          if(porcentaje>100)
          {
            porcentaje=0;
          }
          setState(() {
            
          });
        },
        backgroundColor: Colors.pink,
        child: Icon(Icons.refresh),
        ),
      body: Center(
        child: Container
        (
          padding: EdgeInsets.all(5),
          width: 300,
          height: 300,
         
          child: CustomPaint
          (
            painter: _MiRadialProgress(porcentaje),
          ),
        ),
      ),
    );
  }
}

class _MiRadialProgress extends CustomPainter{
  final porcentaje;

_MiRadialProgress(this.porcentaje);


@override
  void paint(Canvas canvas, Size size) {
    //circulo completo
    final paint= new Paint()
    ..strokeWidth=4
    ..color= Colors.grey
    .. style = PaintingStyle.stroke;
    final Offset center= new Offset(size.width*0.5, size.height*0.5);
    final double radio= min(size.width*0.5, size.height*0.5);

    canvas.drawCircle(center, radio, paint);

    //arco
    final paintArco= new Paint()
    ..strokeWidth=10
    ..color= Colors.pink
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