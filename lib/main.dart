import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:responsive_disign/src/config/theme/colors.dart';
import 'package:responsive_disign/src/modules/main_screen/presentation/providers/provider.dart';
import 'package:responsive_disign/src/modules/main_screen/presentation/screens/main_screen.dart';

void main() {
  runApp(const AdaptiveDisign());
}

class AdaptiveDisign extends StatelessWidget {
  const AdaptiveDisign({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: CustomTheme.colors.backgroundColor,
          cardColor: CustomTheme.colors.secondaryColor,
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme).apply(
            bodyColor: Colors.white,
          )),
      home: ChangeNotifierProvider(
        create: (context) => SideMenuProvider(key: GlobalKey<ScaffoldState>()),
        child: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainScreen();
  }
}
