import 'package:disenos/src/pages/launcher_page.dart';
import 'package:disenos/src/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'models/layout_model.dart';
import 'src/pages/launcher_tablet_page.dart';
import 'src/pages/pinteres_page.dart';

void main() {
  runApp(
    
    MultiProvider(
      providers: 
      [
         ChangeNotifierProvider(create: (_) => ThemeChander(2)),
         ChangeNotifierProvider(create: (_) => MenuModel()),
         ChangeNotifierProvider(create: (_) => LayoutModel()),
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
      home:OrientationBuilder(builder: ((context, orientation) {
      
        final screenSize = MediaQuery.of(context).size;
        if(screenSize.width>500)
        {
          return LauncherTabletPage();
        }
        else
        {
          return LauncherPage();
        }
      })),
    );
  }
}
