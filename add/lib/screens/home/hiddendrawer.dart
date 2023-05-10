import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';
import 'package:stylish/screens/home/home_screen.dart';

class HiddenDrawer extends StatefulWidget{
  const HiddenDrawer({Key? key}):super(key:key);

  @override
  State<HiddenDrawer> createState() =>_HiddenDrawerState();
}
class _HiddenDrawerState extends State<HiddenDrawer>{
  List<ScreenHiddenDrawer> _pages = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _pages=[
      ScreenHiddenDrawer(
        ItemHiddenMenu(
          name:'Homepage',
          baseStyle: TextStyle(),
          selectedStyle: TextStyle()
        ),
        HomeScreen(),
      ),
    ];
  }
  @override
  Widget build(BuildContext context){
    return HiddenDrawerMenu(backgroundColorMenu:
    Color(0xff252527),
      screens: _pages,
      initPositionSelected: 0,
      disableAppBarDefault: true,
    );

  }
}