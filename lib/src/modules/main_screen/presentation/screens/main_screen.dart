import 'package:flutter/material.dart';
import 'package:responsive_disign/src/modules/main_screen/presentation/screens/dashboard_screen.dart';
import 'package:responsive_disign/src/modules/main_screen/presentation/widgets/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Expanded(child: SideMenu()),
            Expanded(
              flex: 5,
              child: DashboardScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
