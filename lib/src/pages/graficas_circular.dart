import 'package:disenos/src/widgets/radial_progress.dart';
import 'package:flutter/material.dart';


class GraficasCirculares extends StatefulWidget {
  const GraficasCirculares({super.key});

  @override
  State<GraficasCirculares> createState() => _GraficasCircularesState();
}

class _GraficasCircularesState extends State<GraficasCirculares> {
  
  double porcentaje=0.0;
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      floatingActionButton: FloatingActionButton(onPressed: 
      ()
      {
        setState(() {
          porcentaje+=10;
          if(porcentaje>100)
          {
            porcentaje=0;
          }
        });
      },
      child: Icon(Icons.refresh),
      ),
      body: Column
      (
        mainAxisAlignment: MainAxisAlignment.center,
        children: 
        [
          
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,

           children: [
             CustomRadialProgress(porcentaje: porcentaje, color: Colors.blue,),
             CustomRadialProgress(porcentaje: porcentaje, color: Colors.orange,)

           ],
         ),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,

           children: [
             CustomRadialProgress(porcentaje: porcentaje, color: Colors.pink,),
             CustomRadialProgress(porcentaje: porcentaje, color: Colors.purple,)

           ],
         )

        ],
      ),
    );
  }
}

class CustomRadialProgress extends StatelessWidget {
  
  final Color color;
  const CustomRadialProgress({
    super.key,
    required this.porcentaje, 
    required this.color,
  });

  final double porcentaje;

  @override
  Widget build(BuildContext context) {
    return Container
    (
      width: 160,
      height: 160,
      child: RadialProgress(
        porcentaje: porcentaje,   
        colorPrimario: color,
        //colorSecundario: Colors.red,
        grosorPrimario: 10,
        grosorSecundario: 4,
        
        ),
    );
  }
}