import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const Responsive({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  });

  static bool isMobile(BuildContext context) => MediaQuery.of(context).size.width < 850;
  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1100 && MediaQuery.of(context).size.width >= 850;
  static bool isDesktop(BuildContext context) => MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    final Widget buildingScreen = switch (width) {
      < 850 => mobile,
      >= 1100 => desktop,
      >= 850 || < 1100 => tablet,
      _ => throw Exception(),
    };

    return buildingScreen;
  }
}
