

import 'package:disenos/src/pages/slidershow.dart';
import 'package:disenos/src/routes/routes.dart';
import 'package:disenos/src/theme/theme.dart';
import 'package:disenos/src/widgets/slideshow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

import '../../models/layout_model.dart';

class LauncherTabletPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final appTheme= Provider.of<ThemeChander>(context);
    final layoutmodel=Provider.of<LayoutModel>(context);
    return Scaffold
    (
      appBar: AppBar
      (
        title: const Text('Diseños en flutter - tablet'),
      ),
      //body: _ListaOpciones(),

      drawer: _MenuPrincipal(),
      body: Row(
        children: [
          Container
          (
            width: 300,
            height: double.infinity,
            child: _ListaOpciones(),
          ),
          Container
          (
            width: 1,
            height: double.infinity,
            color: (appTheme.darkTheme)? Colors.grey :  appTheme.currentTheme.colorScheme.secondary,
          ),
          Expanded(child: layoutmodel.currentPage)
        ],
      ),
    );
  }
}

class _MenuPrincipal extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    final appTheme= Provider.of<ThemeChander>(context);
    final accentColor= appTheme.currentTheme.colorScheme.secondary;
    return Drawer(
      child: Container
      (
        child: Column
        (
          children: 
          [
            
            SafeArea(
              child: Container
              (
                width: double.infinity,
                height: 200,
                child:  CircleAvatar
                (
                  backgroundColor: appTheme.currentTheme.colorScheme.secondary,
                  
                  child: Text('JL',style: TextStyle(fontSize: 50),),
                ),
              ),
            ),
            Expanded(child: _ListaOpciones()),
            ListTile(
              leading: Icon(Icons.lightbulb_outlined,color: accentColor,),
              title: Text('Dark Mode'),
              trailing: Switch.adaptive(
                activeColor: accentColor,
                value:  appTheme.darkTheme, onChanged: (value){
                  appTheme.darkTheme=value;
                }),
            ),
            SafeArea(
              bottom: true,
              top: false,
              left: false,
              right: false,
              child: ListTile(
              
                leading: Icon(Icons.add_to_home_screen,color: accentColor,),
                title: Text('Custom Theme'),
                trailing: Switch.adaptive(
                  activeColor: accentColor,
                  value: appTheme.customTheme, onChanged: (value){
                    appTheme.customTheme=value;
                  }),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _ListaOpciones extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final appTheme= Provider.of<ThemeChander>(context).currentTheme;

    return ListView.separated(
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context,i)=>ListTile
      (
        leading: FaIcon(pageRoutes[i].icon,color: appTheme.colorScheme.secondary,),
        title: Text(pageRoutes[i].tittle),
        trailing: Icon(Icons.chevron_right, color: appTheme.colorScheme.secondary,),
        onTap: () {
           //Navigator.push(context, CupertinoDialogRoute(builder: ( (context) => pageRoutes[i].page), context: context));
           final layoutmodel=Provider.of<LayoutModel>(context,listen: false);
           layoutmodel.currentPage=pageRoutes[i].page;
        },
      ), 
      separatorBuilder: (context,i)=>Divider
      (
        color: appTheme.primaryColorLight,
      ), 
      itemCount: pageRoutes.length);
  }
}