
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