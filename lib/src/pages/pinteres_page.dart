
import 'package:disenos/src/widgets/pinterest_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class PinterestPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      body: PinterestMenu(),
    );
  }
}


class PiteresGrid extends StatelessWidget {
  final List items= List.generate(200, (index) => index);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: MasonryGridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 4,
        crossAxisSpacing: 4,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Tile(
            index: index,
            extent: (index % 5 + 1) * 100,
          );
        },
      ),
    );
  }
}

class Tile extends StatelessWidget {
  const Tile({
    required this.index,
    required this.extent,
  });
  final int index;
  final double extent;
 
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(3),
      height: extent,
      decoration: const BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Center(
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: Text('$index'),
        ),
      ),
    );
  }
}