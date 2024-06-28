
import 'package:disenos/src/widgets/slideshow.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../theme/theme.dart';

class SlideshowPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    bool isLarge;
    if(MediaQuery.of(context).size.height>500)
    {
      isLarge= true;
    }else
    {
      isLarge=false;
    }

    final children =
    [
       Expanded(child: MiSlider()),
       Expanded(child: MiSlider()),
    ];

    return  Scaffold
    (
      appBar: AppBar(),
      body: (isLarge) ? 
        Column(
          children: children,
        ):
        Row
        (
          children: children,
        )
     
    );
  }
}

class MiSlider extends StatelessWidget {
  const MiSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) { 
    final appTheme= Provider.of<ThemeChander>(context);
    final accentColor= appTheme.currentTheme.colorScheme.secondary;           
    return Slideshow(
      puntosArriba: false,
      colorPrimario: appTheme.darkTheme ?accentColor: Colors.pink,
      colorSecundario: Colors.grey,
      bulletPrimario:16,
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