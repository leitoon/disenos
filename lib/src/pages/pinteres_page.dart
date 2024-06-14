
import 'package:disenos/src/widgets/pinterest_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:provider/provider.dart';

class PinterestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mostrar = Provider.of<MenuModel>(context).mostrar;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          PiteresGrid(),
          Positioned(
            bottom: 30,
            child: PinterestMenu(
              
              mostrar: mostrar,
              activeColor: Colors.blue,
              inactiveColor: Colors.black,
              items: [

              PinterestButton(onPressed: (){print('Icon pie chart');}, icon: Icons.pie_chart),
              PinterestButton(onPressed: (){print('Icon search');}, icon: Icons.search),
              PinterestButton(onPressed: (){print('Icon noti');}, icon: Icons.notifications),
              PinterestButton(onPressed: (){print('Icon super');}, icon: Icons.supervised_user_circle)

              ],
              //backgroundColor: Colors.red,
              ),
          ),
        ],
      ),
    );
  }
}


class PiteresGrid extends StatefulWidget {
  @override
  State<PiteresGrid> createState() => _PiteresGridState();
}

class _PiteresGridState extends State<PiteresGrid> {
  final List items = List.generate(200, (index) => index);
  ScrollController controller = ScrollController();
  double scrollAnterior = 0;

  @override
  void initState() {
    controller.addListener(() {
      print('scrollistener ${controller.offset}');
      print('scrollAnterior ${scrollAnterior}');
      if (controller.offset > scrollAnterior ) {
        Provider.of<MenuModel>(context, listen: false).mostrar = false;
        if(scrollAnterior <0.0)
        {
          Provider.of<MenuModel>(context, listen: false).mostrar = true;
        }
      }
      
       else {
        Provider.of<MenuModel>(context, listen: false).mostrar = true;
        print('mostrar menu');
      }
      scrollAnterior = controller.offset;
    });
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: MasonryGridView.count(
        controller: controller,
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
          color: Colors.blue,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Center(
        child: CircleAvatar(
          backgroundColor: Colors.white,
          child: Text('$index'),
        ),
      ),
    );
  }
}

class MenuModel with ChangeNotifier {
  bool _mostrar = true;
  bool get mostrar => _mostrar;

  set mostrar(bool valor) {
    _mostrar = valor;
    notifyListeners();
  }
}