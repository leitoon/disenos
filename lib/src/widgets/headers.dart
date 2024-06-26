
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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

class IconHeader extends StatelessWidget {
  
  final IconData icon;
    final String titulo;
    final String subtitulo;
    final Color color1;
    final Color color2;
   IconHeader({super.key,
   required this.icon,
    required this.titulo,
    required this.subtitulo,
    this.color1=const Color(0xff526BF6),
    this.color2=const Color(0xff67acf2)});

  @override
  Widget build(BuildContext context) {
    
    final Color colorBlanco = Colors.white.withOpacity(0.7);
    return Stack(
      children: [
        _IconHeaderbackground(color1: color1,color2: color2,),
        Positioned(
          top: -50,
          left: -70,
          
          child: FaIcon(icon,size: 250,color: Colors.white.withOpacity(0.2), )),
          Column
          (
            children: 
            [
              SizedBox(height: 80,width: double.infinity,),
              Text(subtitulo,
              style: TextStyle
              (
                color: colorBlanco,
                fontSize: 20
              ),
              ),
              SizedBox(height: 20,),
              Text(titulo,
              style: TextStyle
              (
                color: colorBlanco,
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(height: 20,),
             FaIcon(icon,size: 80,color: Colors.white, )
            ],
          )
        ]);
  }
}



class _IconHeaderbackground extends StatelessWidget {
  final Color color1;
    final Color color2;
  const _IconHeaderbackground({
    super.key, required this.color1, required this.color2,
  });

  @override
  Widget build(BuildContext context) {
    return Container
    (
      width: double.infinity,
      height: 280,
      decoration: BoxDecoration
      (
        
        borderRadius: BorderRadius.only(bottomLeft:Radius.circular(80) ),
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: 
        [
          
          color1,
          color2,
        ])
      ),
    );
  }
}