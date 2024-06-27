import 'package:disenos/src/pages/launcher_page.dart';
import 'package:disenos/src/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'src/pages/pinteres_page.dart';

void main() {
  runApp(
    
    MultiProvider(
      providers: 
      [
         ChangeNotifierProvider(create: (_) => ThemeChander(2)),
         ChangeNotifierProvider(create: (_) => MenuModel()),
      ],
   
      child: MyApp())
    
    
    );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final currentTheme= Provider.of<ThemeChander>(context).currentTheme;
    return MaterialApp(
      theme: currentTheme,
      debugShowCheckedModeBanner: false,
      home: LauncherPage(),
    );
  }
}
