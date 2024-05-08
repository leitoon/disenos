import 'package:disenos/src/pages/circularprogress.dart';
import 'package:disenos/src/retos/cuadradoanimado.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Diseños app',
      home: CirculasProgressPage(),
    );
  }
}
