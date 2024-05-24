

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SlideShowPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold
    (
      body: Center
      (
        child:
        _Slider()
        //SvgPicture.asset('assets/svgs/slide-1.svg'),
      ),
    );
  }
}

class _Slider extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container
    (
      child: PageView(
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