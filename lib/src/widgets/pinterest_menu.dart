

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


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
      child: Container
      (
      child: _MenuItems(menuItems:items),
       width: 250,
       height: 60,
       decoration: BoxDecoration
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
      ),
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
    return Container
    (
      child: Icon(item.icon),
    );
  }
}