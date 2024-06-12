
import 'package:disenos/src/widgets/slideshow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class SlideshowPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return const Scaffold
    (
      body: Center
      (
        child: Column(
          children: [
            Expanded(child: MiSlider()),
            Expanded(child: MiSlider()),
          ],
        )
      ),
    );
  }
}

class MiSlider extends StatelessWidget {
  const MiSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Slideshow(
      puntosArriba: false,
      colorPrimario: Colors.pink,
      colorSecundario: Colors.grey,
      bulletPrimario:18,
      bulletSecundario:12,
      slides:<Widget>[
      SvgPicture.asset('assets/svgs/slide-1.svg'),
      SvgPicture.asset('assets/svgs/slide-2.svg'),
      SvgPicture.asset('assets/svgs/slide-3.svg'),
      SvgPicture.asset('assets/svgs/slide-4.svg'),
      SvgPicture.asset('assets/svgs/slide-5.svg'),
      ]);
  }
}