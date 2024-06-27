import 'package:disenos/src/widgets/radial_progress.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../theme/theme.dart';


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
      appBar: AppBar(),
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
             CustomRadialProgress(porcentaje: porcentaje*1.2, color: Colors.orange,)

           ],
         ),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,

           children: [
             CustomRadialProgress(porcentaje: porcentaje*1.4, color: Colors.pink,),
             CustomRadialProgress(porcentaje: porcentaje*1.6, color: Colors.purple,)

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
    final appTheme= Provider.of<ThemeChander>(context);

    return Container
    (
      width: 160,
      height: 160,
      child: RadialProgress(
        porcentaje: porcentaje,   
        colorPrimario: color,
        colorSecundario: appTheme.currentTheme.colorScheme.secondary,
        grosorPrimario: 10,
        grosorSecundario: 4,
        
        ),
    );
  }
}