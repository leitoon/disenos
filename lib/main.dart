import 'package:flutter/material.dart';
//import 'src/pages/emergency_page.dart';
import 'src/pages/slider_list_page.dart';
//import 'src/pages/pinteres_page.dart';
//import 'src/pages/graficas_circular.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SliverListPage(),
    );
  }
}
