import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class PinterestButton
{
  final Function onPressed;
  final IconData icon;

  PinterestButton({required this.onPressed, required this.icon});

}


class PinterestMenu extends StatelessWidget {
  final List<PinterestButton>items =
  [
    PinterestButton(onPressed: (){print('Icon pie chart');}, icon: Icons.pie_chart),
    PinterestButton(onPressed: (){print('Icon search');}, icon: Icons.search),
    PinterestButton(onPressed: (){print('Icon noti');}, icon: Icons.notifications),
    PinterestButton(onPressed: (){print('Icon super');}, icon: Icons.supervised_user_circle)
  ];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ChangeNotifierProvider(
        create: (_) => _MenuModel(),
        child: _PinterestMenuBackground(child:   _MenuItems(menuItems:items),)),
    );
  }
}

class _PinterestMenuBackground extends StatelessWidget {
  final Widget child;
  const _PinterestMenuBackground({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Container
    (
     width: 250,
     height: 60,
     decoration: const BoxDecoration
     (
      color: Colors.white,
      borderRadius: BorderRadius.all(Radius.circular(100)),
      boxShadow: [
        BoxShadow(
          color: Colors.black38,
          spreadRadius: -5,
          blurRadius: 10
        )
      ]
    
     ),
      child: child,
        
    );
  }
}

class _MenuItems extends StatelessWidget{
  final List<PinterestButton> menuItems;

  const _MenuItems({ required this.menuItems});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row
    (
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(menuItems.length, (index) => _PinterestMenuButton(index: index, item: menuItems[index],))
  
    );
  }

}

class _PinterestMenuButton extends StatelessWidget {
  final int index;
  final PinterestButton item;

  const _PinterestMenuButton({required this.index, required this.item});
  @override
  Widget build(BuildContext context) {
    final itemSeleccionado= Provider.of<_MenuModel>(context).itemSeleccionado;
    return GestureDetector(
      onTap: (){
        Provider.of<_MenuModel>(context,listen: false).itemSeleccionado =index;
        item.onPressed();},
      behavior: HitTestBehavior.translucent,
      child: Icon(item.icon,
      size: (itemSeleccionado == index) ? 35:25,
      color: (itemSeleccionado == index) ? Colors.black : Colors.blueGrey,
      ),
    );
  }
}

class _MenuModel with ChangeNotifier 
{
  int _itemSeleccionado=0;
  int get itemSeleccionado=> _itemSeleccionado;

  set itemSeleccionado(int index)
  {
    _itemSeleccionado =index;
    notifyListeners();
  }

}