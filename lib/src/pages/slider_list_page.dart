
import 'package:flutter/material.dart';

class SliverListPage extends StatelessWidget {
  const SliverListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      body: 
      //_ListaTareas()
      //_Titulo(),
      Stack
      (
        children: 
        [
          _MainScroll(),
          Positioned(
            bottom: -10,
            right: 0,
            child: _BotonNewList())
        ],
      )
    );
  }
}

class _BotonNewList extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    final size= MediaQuery.of(context).size;
    return ButtonTheme(
      child: ElevatedButton (
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Color(0xffED6762)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder> (
            const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topLeft: Radius.circular(50))
            )
          )
        ),
        child: SizedBox(
          height: 100,
          width: size.width * 0.75,
          child: const Center(
            child: Text(
              'CREATE A NEW LIST',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
                letterSpacing: 2
              ),
            ),
          ),
        ),
        onPressed: (){}
      )
    );
  }
}


class _MainScroll extends StatelessWidget {
     final items = [
    _ListItem(titulo:  'Orange',color:  Color(0xffF08F66) ),
    _ListItem(titulo: 'Family',color: Color(0xffF2A38A) ),
    _ListItem(titulo: 'Subscriptions', color:Color(0xffF7CDD5) ),
    _ListItem( titulo:'Books',color: Color(0xffFCEBAF) ),
    _ListItem(titulo: 'Orange',color: Color(0xffF08F66) ),
    _ListItem(titulo: 'Family',color: Color(0xffF2A38A) ),
    _ListItem(titulo: 'Subscriptions',color: Color(0xffF7CDD5) ),
    _ListItem(titulo: 'Books',color: Color(0xffFCEBAF) ),
  ];


  @override
  Widget build(BuildContext context) {
    return Container
    (
      child: CustomScrollView(
        slivers: 
        [
          SliverPersistentHeader(
          floating: true,
          delegate: 
          _SliverCustomHeaderDelega(
            minheight: 200, 
            maxheight: 250, 
            child:Container
            (
              color: Colors.white,
              child:  _Titulo(),
            ))
          
          ),
          SliverList(delegate: 
          SliverChildListDelegate
          (
            [
              ...items,
              SizedBox(height: 100,)
            ]

          )
          )
        ],
      ),
    );
  }
}

class _SliverCustomHeaderDelega extends SliverPersistentHeaderDelegate {
  final double minheight;
  final double maxheight;
  final Widget child;

  _SliverCustomHeaderDelega({
    required this.minheight,
    required this.maxheight,
    required this.child});

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    // TODO: implement build
    return SizedBox.expand(
      child:child ,
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => maxheight;

  @override
  // TODO: implement minExtent
  double get minExtent => minheight;

  @override
  bool shouldRebuild(_SliverCustomHeaderDelega oldDelegate) {
    // TODO: implement shouldRebuild
    return maxheight != oldDelegate.maxheight || minheight != oldDelegate.minheight 
    || child != oldDelegate.child; 
   }


}

class _Titulo extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column
    (
      crossAxisAlignment: CrossAxisAlignment.start,
      children: 
      [
        const SizedBox(height: 30,),
        Container
        (
          margin: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
          child: const Text('New', style: TextStyle
          (
            color: Color(0xff532128),
            fontSize: 50
          ),),
        ),
        Stack
        (
          children: 
          [
            const SizedBox
            (
              width: 130,
            ),
            Positioned(
              bottom: 8,
              left: 30,
              child: Container
            (
              
              width: 120,
              height: 8,
              color: Color(0xffF7CDD5),
            )),
            Container
            (
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: const Text('List',style: TextStyle(color: Color(0xffD93A30),fontSize: 50,fontWeight: FontWeight.bold),),
            )
          ],
        )

      ],
    );
  }
}


class _ListaTareas extends StatelessWidget {

    final items = [
    _ListItem(titulo:  'Orange',color:  Color(0xffF08F66) ),
    _ListItem(titulo: 'Family',color: Color(0xffF2A38A) ),
    _ListItem(titulo: 'Subscriptions', color:Color(0xffF7CDD5) ),
    _ListItem( titulo:'Books',color: Color(0xffFCEBAF) ),
    _ListItem(titulo: 'Orange',color: Color(0xffF08F66) ),
    _ListItem(titulo: 'Family',color: Color(0xffF2A38A) ),
    _ListItem(titulo: 'Subscriptions',color: Color(0xffF7CDD5) ),
    _ListItem(titulo: 'Books',color: Color(0xffFCEBAF) ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder
    (
      itemCount: items.length,
      itemBuilder: (context, index) {
        return items[index];
      },
    );
  }
}

class _ListItem extends StatelessWidget {
  final String titulo;
  final Color color;
  const _ListItem({
    super.key,
     required this.titulo, 
     required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container
    (
      margin: const EdgeInsets.all(10),
      height: 100,
      width: 100,
      padding: const EdgeInsets.all(30),
      decoration: BoxDecoration
      (
        color: color,
        borderRadius: BorderRadius.circular(30)
      ),
      child: Text(titulo,
      style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20) ,),
    );
  }
}