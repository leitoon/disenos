
import 'package:flutter/material.dart';
import 'package:disenos/src/pages/slidershow.dart';

class LayoutModel with ChangeNotifier 
{
  Widget _currentPage =SlideshowPage();
  set currentPage(Widget page){
    _currentPage=page;
    notifyListeners();
  }
  Widget get currentPage => _currentPage;
}