

import 'package:disenos/src/pages/animaciones.dart';
import 'package:disenos/src/pages/emergency_page.dart';
import 'package:disenos/src/pages/graficas_circular.dart';
import 'package:disenos/src/pages/headers_page.dart';
import 'package:disenos/src/pages/pinteres_page.dart';
import 'package:disenos/src/pages/slider_list_page.dart';
import 'package:disenos/src/pages/slidershow.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

final pageRoutes = [
  _Route(icon: FontAwesomeIcons.slideshare, tittle: 'Slideshow', page: SlideshowPage()),
  _Route(icon: FontAwesomeIcons.ambulance, tittle: 'Emergence', page: EmergencyPage()),
  _Route(icon: FontAwesomeIcons.heading, tittle: 'Encabezados', page: HeaderPage()),
  _Route(icon: FontAwesomeIcons.peopleCarry, tittle: 'Cuadro animado', page: CuadradoAnimado()),
   _Route(icon: FontAwesomeIcons.circleNotch, tittle: 'Barra progreso', page: GraficasCirculares()),
   _Route(icon: FontAwesomeIcons.pinterest, tittle: 'Pinterest', page: PinterestPage()),
   _Route(icon: FontAwesomeIcons.mobile, tittle: 'Slivers', page: SliverListPage()),
];

class _Route {
  final IconData icon;
  final String tittle;
  final Widget page;

  _Route({
    required this.icon, 
    required this.tittle, 
    required this.page
    });
}