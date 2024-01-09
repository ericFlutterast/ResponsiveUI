import 'package:fl_chart/fl_chart.dart';
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

List<(Color color, double value)> chartsData = [
  (Colors.purple, 25),
  (Colors.pink, 24),
  (Colors.red, 10),
  (Colors.orange, 16),
  (CustomTheme.colors.primaryColor.withOpacity(0.5), 25),
];

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: CustomTheme.colors.secondaryColor,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Padding(
        padding: EdgeInsets.all(CustomTheme.contentPadding),
        child: Column(
          children: [
            const Text(
              'Storage Details',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: CustomTheme.contentPadding),
            _PieChartWidget(),
          ],
        ),
      ),
    );
  }
}

class _PieChartWidget extends StatefulWidget {
  const _PieChartWidget();

  @override
  State<_PieChartWidget> createState() => _PieChartWidgetState();
}

class _PieChartWidgetState extends State<_PieChartWidget> {
  @override
  Widget build(BuildContext context) {
    double radiusOfCharts = 30;

    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          PieChart(
            PieChartData(
              startDegreeOffset: -90,
              centerSpaceRadius: 70,
              sectionsSpace: 0.0,
              sections: List.generate(chartsData.length, (index) {
                return PieChartSectionData(
                  radius: radiusOfCharts -= 3,
                  color: chartsData[index].$1,
                  value: chartsData[index].$2,
                  showTitle: false,
                );
              }),
            ),
          ),
          Positioned.fill(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '29.1',
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(color: Colors.white, fontWeight: FontWeight.w600, height: 0.5),
                ),
                SizedBox(height: CustomTheme.contentPadding / 2),
                const Text('of 128GB'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
