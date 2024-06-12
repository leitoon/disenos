

import 'package:disenos/models/slider_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

class SlideShowPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_)=> SliderModel(),
      child: Scaffold
      (
        body: Center
        (
          child:
         Column
         (
          children: 
          [
             Expanded(child: _Slider()),
             _Dots()
      
          ],
         )
          //SvgPicture.asset('assets/svgs/slide-1.svg'),
        ),
      ),
    );
  }
}


class _Dots extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container
    (
      width: double.infinity,
      height: 70,
    
      child: Row
      (
        mainAxisAlignment: MainAxisAlignment.center,
        children: 
        [
          _Dot(index: 0,),
          _Dot(index: 1,),
          _Dot(index: 2,)
        ],
      ),
    );
  }
}

class _Dot extends StatelessWidget {
  
  final int index;

  const _Dot({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    final pageViewIndex=Provider.of<SliderModel>(context).currentPage;
    return AnimatedContainer
    (
      duration: Duration(milliseconds: 200),
      width: 12,
      height: 12,
      margin: EdgeInsets.symmetric(horizontal:5 ),
      decoration: BoxDecoration
      (
        color:(pageViewIndex>=index-0.5 && pageViewIndex<index+0.5)? Colors.blue:Colors.grey,
        shape: BoxShape.circle
      ),
    );
  }
}

class _Slider extends StatefulWidget {

  @override
  State<_Slider> createState() => _SliderState();
}

class _SliderState extends State<_Slider> {
  
  final pageViewController=PageController();

  @override
  void initState() {
    // TODO: implement initState
    pageViewController.addListener(() 
    {
      //print('pageactual ${pageViewController.page}');
     
      Provider.of<SliderModel>(context,listen: false).currentPage=pageViewController.page!;


     
     });
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    pageViewController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container
    (
      child: PageView(
        controller: pageViewController,
        children: 
        [
          _Slide(svg: 'assets/svgs/slide-1.svg',),
           _Slide(svg: 'assets/svgs/slide-2.svg',),
            _Slide(svg: 'assets/svgs/slide-3.svg',),
        ],
      ),
    );
  }
}

class _Slide extends StatelessWidget {
  final String svg;

  const _Slide({super.key,
  required this.svg});

  @override
  Widget build(BuildContext context) {
    return Container
    (
      width: double.infinity,
      height: double.infinity,
      padding: EdgeInsets.all(30),
      child: SvgPicture.asset(svg),
    );
  }
}