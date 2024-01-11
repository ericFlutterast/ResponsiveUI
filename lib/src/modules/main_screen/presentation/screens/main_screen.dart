import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_disign/src/modules/main_screen/presentation/providers/provider.dart';
import 'package:responsive_disign/src/modules/main_screen/presentation/screens/dashboard_screen.dart';
import 'package:responsive_disign/src/modules/main_screen/presentation/widgets/side_menu.dart';
import 'package:responsive_disign/src/shared/widgets/responsive.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: context.read<SideMenuProvider>().scaffoldKey,
      drawer: const SideMenu(),
      body: SafeArea(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context)) const Expanded(child: SideMenu()),
            const Expanded(
              flex: 5,
              child: DashboardScreen(),
            ),
          ],
        ),
      ),
    );
  }
}
