import 'package:flutter/material.dart';

class SideMenuProvider extends ChangeNotifier {
  final GlobalKey<ScaffoldState> _scaffoldKey;

  SideMenuProvider({required GlobalKey<ScaffoldState> key}) : _scaffoldKey = key;

  GlobalKey<ScaffoldState> get scaffoldKey => _scaffoldKey;

  void controlMenu() {
    if (!_scaffoldKey.currentState!.isDrawerOpen) {
      _scaffoldKey.currentState!.openDrawer();
    }
  }
}
