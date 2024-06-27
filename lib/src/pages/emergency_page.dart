

import 'package:animate_do/animate_do.dart';
import 'package:disenos/src/widgets/botonGordo.dart';
import 'package:disenos/src/widgets/headers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ItemBoton {

  final IconData icon;
  final String texto;
  final Color color1;
  final Color color2;

  ItemBoton( this.icon, this.texto, this.color1, this.color2 );
}

class EmergencyPage extends StatelessWidget {
  const EmergencyPage({super.key});
  

  @override
  Widget build(BuildContext context) {
    final items = <ItemBoton>[
  ItemBoton( FontAwesomeIcons.carBurst, 'Motor Accident', const Color(0xff6989F5), const Color(0xff906EF5) ),
  ItemBoton( FontAwesomeIcons.plus, 'Medical Emergency', const Color(0xff66A9F2), const Color(0xff536CF6) ),
  ItemBoton( FontAwesomeIcons.masksTheater, 'Theft / Harrasement', const Color(0xffF2D572), const Color(0xffE06AA3) ),
  ItemBoton( FontAwesomeIcons.personBiking, 'Awards', const Color(0xff317183), const Color(0xff46997D) ),
  ItemBoton( FontAwesomeIcons.carBurst, 'Motor Accident', const Color(0xff6989F5), const Color(0xff906EF5) ),
  ItemBoton( FontAwesomeIcons.plus, 'Medical Emergency', const Color(0xff66A9F2), const Color(0xff536CF6) ),
  ItemBoton( FontAwesomeIcons.masksTheater, 'Theft / Harrasement', const Color(0xffF2D572), const Color(0xffE06AA3) ),
  ItemBoton( FontAwesomeIcons.personBiking, 'Awards', const Color(0xff317183), const Color(0xff46997D) ),
  ItemBoton( FontAwesomeIcons.carBurst, 'Motor Accident', const Color(0xff6989F5), const Color(0xff906EF5) ),
  ItemBoton( FontAwesomeIcons.plus, 'Medical Emergency', const Color(0xff66A9F2), const Color(0xff536CF6) ),
  ItemBoton( FontAwesomeIcons.masksTheater, 'Theft / Harrasement', const Color(0xffF2D572), const Color(0xffE06AA3) ),
  ItemBoton( FontAwesomeIcons.personBiking, 'Awards', const Color(0xff317183), const Color(0xff46997D) ),
];


List<Widget> itemMap= items.map(
  (item) => FadeInLeft (
    
    child: BotonGordo(icon: item.icon,
    texto: item.texto,
    color1: item.color1,
    color2: item.color2,
    onPress: (){print('hola');},
    ),
  ) ,).toList();
    return Scaffold
    (

      body: Stack(
        children: [
          
          Container(
            margin: EdgeInsets.only(top: 260),
            child: ListView
            (
              physics: BouncingScrollPhysics(),
              children: 
              [
                
                ...itemMap
                
              ],
            ),
          ),
          IconHeader(
            icon: FontAwesomeIcons.plus, 
            titulo: 'Asistencia Médica', 
            subtitulo: 'Haz solicitado'),

          Positioned(
            right: 0,
            top: 30,
            child: RawMaterialButton(
              onPressed: (){},
              shape: CircleBorder(),
              padding: EdgeInsets.all(15),
              child: FaIcon(FontAwesomeIcons.ellipsisV, color: Colors.white)),
          ),
          Positioned(
            left: 10,
            top: 30,
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.keyboard_arrow_left,size: 40,color: Colors.white,))),
        ],
      )

    );
  }
}
//BotonGordo(onPress: (){print('tap');},)
class PageHeader extends StatelessWidget {
  const PageHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconHeader(icon: FontAwesomeIcons.plus,
     titulo: 'Asistencia Médica',
      subtitulo: 'Haz solicitado',);
  }
}