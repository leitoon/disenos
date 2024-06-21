

import 'package:disenos/src/widgets/botonGordo.dart';
import 'package:disenos/src/widgets/headers.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EmergencyPage extends StatelessWidget {
  const EmergencyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (

      body: Center
      (
        child: BotonGordo(),
      )

    );
  }
}

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