import 'package:flutter/material.dart';
import 'package:responsive_disign/src/config/theme/colors.dart';
import 'package:responsive_disign/src/modules/main_screen/presentation/widgets/dashboard_content.dart';
import 'package:responsive_disign/src/modules/main_screen/presentation/widgets/header.dart';
import 'package:responsive_disign/src/modules/main_screen/presentation/widgets/storage_details.dart';

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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Expanded(
                    flex: 5,
                    child: DashboardContent(),
                  ),
                  SizedBox(width: CustomTheme.contentPadding),
                  const Expanded(
                    flex: 2,
                    child: StorageDetails(),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
