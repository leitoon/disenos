import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';

class CirculasProgressPage extends StatefulWidget {
  const CirculasProgressPage({super.key});

  @override
  State<CirculasProgressPage> createState() => _CirculasProgressPageState();
}

class _CirculasProgressPageState extends State<CirculasProgressPage> with SingleTickerProviderStateMixin {
  late AnimationController controller;

  double porcentaje =0.0;
  double nuevoprcentaje=0.0;
  
  @override
  void initState() {
    super.initState();
    controller= AnimationController(vsync: this, duration: const Duration(milliseconds: 800));
    controller.addListener
    (()
     { 
      //print('valor ${controller.value}');
      
      setState(() {
              porcentaje= lerpDouble(porcentaje, nuevoprcentaje, controller.value)!;

      });
     });
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      floatingActionButton: FloatingActionButton(
        onPressed: ()
        {
          porcentaje=nuevoprcentaje;
          nuevoprcentaje+=10;
          if(nuevoprcentaje>100)
          {
            nuevoprcentaje=0;
            porcentaje=0;
          }
          controller.forward(from: 0.0);

          setState(() {
            
          });
        },
        backgroundColor: Colors.pink,
        child: const Icon(Icons.refresh),
        ),
      body: Center(
        child: Container
        (
          padding: const EdgeInsets.all(5),
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
    final paint= Paint()
    ..strokeWidth=4
    ..color= Colors.grey
    .. style = PaintingStyle.stroke;
    final Offset center= Offset(size.width*0.5, size.height*0.5);
    final double radio= min(size.width*0.5, size.height*0.5);

    canvas.drawCircle(center, radio, paint);

    //arco
    final paintArco= Paint()
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