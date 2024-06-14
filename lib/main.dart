import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'src/pages/pinteres_page.dart';
//import 'src/pages/graficas_circular.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => MenuModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: PinterestPage(),
      ),
    );
  }
}
