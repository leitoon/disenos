
import 'package:flutter/material.dart';

class HeaderCuadrado extends StatelessWidget {
   
  
  @override
  Widget build(BuildContext context) {
    return Container
    (
      height: 300,
      color: const Color(0xff615aab),
    );
  }
}

class HeaderBordesRedondeados extends StatelessWidget {
   
  
  @override
  Widget build(BuildContext context) {
    return Container
    (
      height: 300,
      
      decoration: BoxDecoration
      (
        color:  Color(0xff615aab),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(70),
          bottomRight: Radius.circular(70))
      ),
    );
  }
}

class HeaderDiagonal extends StatelessWidget {
   
  
  @override
  Widget build(BuildContext context) {
    return Container
    (
      height: double.infinity,
      width: double.infinity,
      //color: const Color(0xff615aab),
      child: CustomPaint
      (
        painter: _HeaderDiagonalPainter(),
      ),
    );
  }
}

class _HeaderDiagonalPainter extends CustomPainter
{
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final paint=Paint();
    paint.color=Color(0xff615aab);
    paint.style=PaintingStyle.fill;
    paint.strokeWidth=2;
    final path=Path();
    path.moveTo(0, size.height*0.35);
    path.lineTo(size.width, size.height*0.30);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.lineTo(0, size.height*0.5);
    canvas.drawPath(path, paint);
    
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
  
}


class HeaderTriangular extends StatelessWidget {
   
  
  @override
  Widget build(BuildContext context) {
    return Container
    (
      height: double.infinity,
      width: double.infinity,
      //color: const Color(0xff615aab),
      child: CustomPaint
      (
        painter: _HeaderTriangularPainter(),
      ),
    );
  }
}

class _HeaderTriangularPainter extends CustomPainter
{
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final paint=Paint();
    paint.color=Color(0xff615aab);
    paint.style=PaintingStyle.fill;
    paint.strokeWidth=2;
    final path=Path();
    path.moveTo(0, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    //path.lineTo(0, size.height);
    path.lineTo(0, 0);
    //path.lineTo(0, size.height*0.5);
    canvas.drawPath(path, paint);
    
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
  
}

class HeaderPico extends StatelessWidget {
   
  
  @override
  Widget build(BuildContext context) {
    return Container
    (
      height: double.infinity,
      width: double.infinity,
      //color: const Color(0xff615aab),
      child: CustomPaint
      (
        painter: _HeaderPicoPainter(),
      ),
    );
  }
}

class _HeaderPicoPainter extends CustomPainter
{
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final paint=Paint();
    paint.color=Color(0xff615aab);
    paint.style=PaintingStyle.fill;
    paint.strokeWidth=10;
    final path=Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height*0.2);
    path.lineTo(size.width*0.5, size.height*0.28);
    path.lineTo(size.width, size.height*0.2);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, paint);
    
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
  
}

class HeaderCurvo extends StatelessWidget {
   
  
  @override
  Widget build(BuildContext context) {
    return Container
    (
      height: double.infinity,
      width: double.infinity,
      //color: const Color(0xff615aab),
      child: CustomPaint
      (
        painter: _HeaderCurvoPainter(),
      ),
    );
  }
}

class _HeaderCurvoPainter extends CustomPainter
{
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final paint=Paint();
    paint.color=Color(0xff615aab);
    paint.style=PaintingStyle.fill;
    paint.strokeWidth=20;
    final path=Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height*0.25);
    //path.lineTo(size.width, size.height*0.25);
    path.quadraticBezierTo(size.width*0.5, size.height*0.5, size.width, size.height*0.25);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, paint);
    
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
  
}

class HeaderWave extends StatelessWidget {
   
  
  @override
  Widget build(BuildContext context) {
    return Container
    (
      height: double.infinity,
      width: double.infinity,
      //color: const Color(0xff615aab),
      child: CustomPaint
      (
        painter: _HeaderWave(),
      ),
    );
  }
}

class _HeaderWave extends CustomPainter
{
  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final paint=Paint();
    paint.color=Color(0xff615aab);
    paint.style=PaintingStyle.fill;
    paint.strokeWidth=20;
    final path=Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height*0.25);
    //path.lineTo(size.width, size.height*0.25);
    path.quadraticBezierTo(size.width*0.25, size.height*0.30, size.width*0.5, size.height*0.25);
    path.quadraticBezierTo(size.width*0.75, size.height*0.20, size.width, size.height*0.25);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, paint);
    
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
  
}

class HeaderWaveGradient extends StatelessWidget {
   
  
  @override
  Widget build(BuildContext context) {
    return Container
    (
      height: double.infinity,
      width: double.infinity,
      //color: const Color(0xff615aab),
      child: CustomPaint
      (
        painter: _HeaderWaveGradient(),
      ),
    );
  }
}

class _HeaderWaveGradient extends CustomPainter
{

  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect= Rect.fromCircle(
      center: Offset(0.0, 55.0), 
      radius: 180);
    final Gradient gradiente=LinearGradient
    (
      begin: Alignment.center,
      end: Alignment.bottomCenter,
      colors: <Color>
    [
      Color(0xff6D05E8),
      Color(0xffC012FF),
      Color(0xff6D05FA),
    ],
    stops: 
    [
      0.2,
      0.5,
      1.0
    ]
    
    );
    // TODO: implement paint
    final paint=Paint()..shader=gradiente.createShader(rect);
    paint.color=Colors.red;
    paint.style=PaintingStyle.fill;
    paint.strokeWidth=20;
    final path=Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height*0.25);
    //path.lineTo(size.width, size.height*0.25);
    path.quadraticBezierTo(size.width*0.25, size.height*0.30, size.width*0.5, size.height*0.25);
    path.quadraticBezierTo(size.width*0.75, size.height*0.20, size.width, size.height*0.25);
    path.lineTo(size.width, 0);
    canvas.drawPath(path, paint);
    
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
  
}