import 'package:flutter/material.dart';
import 'package:responsive_disign/src/config/theme/colors.dart';
import 'package:responsive_disign/src/modules/main_screen/presentation/widgets/header.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(CustomTheme.contentPadding),
          child: Column(
            children: [
              const Header(),
              SizedBox(height: CustomTheme.contentPadding),
              Row(
                children: [
                  Expanded(
                      flex: 5,
                      child: Container(
                        height: 500,
                        color: Colors.white,
                      )),
                  SizedBox(width: CustomTheme.contentPadding),
                  Expanded(
                      flex: 2,
                      child: Container(
                        height: 500,
                        color: Colors.pink,
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
