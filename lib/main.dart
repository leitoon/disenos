import 'package:flutter/material.dart';

import 'src/pages/pinteres_page.dart';
//import 'src/pages/graficas_circular.dart';

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
      home: PinterestPage(),
    );
  }
}
