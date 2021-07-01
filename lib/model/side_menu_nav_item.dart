import 'package:flutter/cupertino.dart';

class SideNavItem{
  SideNavItem({required this.index,required this.icons,required this.title});

  String title;
  IconData icons;
  int index;
}