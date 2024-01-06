import 'package:flutter/material.dart';
import 'package:responsive_disign/src/config/theme/colors.dart';

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
                Row(
                  children: [
                    const Text(
                      'Sonia Jopa',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const Spacer(),
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          fillColor: CustomTheme.colors.secondaryColor,
                          filled: true,
                          border: const OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            )),
      ),
    );
  }
}
