import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_disign/src/config/theme/colors.dart';
import 'package:responsive_disign/src/modules/main_screen/domain/details_item_data.dart';

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Storage Details',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: CustomTheme.contentPadding),
            const _PieChartWidget(),
            SizedBox(height: CustomTheme.contentPadding),
            ...List.generate(detailsData.length, (index) {
              return _DetailsItem(
                title: detailsData[index].title,
                volume: detailsData[index].volume,
                iconPath: detailsData[index].iconPath,
                amoutOfFiles: detailsData[index].amoutOfFiles,
              );
            }),
          ],
        ),
      ),
    );
  }
}

class _DetailsItem extends StatelessWidget {
  final String iconPath;
  final String title;
  final double volume;
  final int amoutOfFiles;

  const _DetailsItem({
    required this.title,
    required this.volume,
    required this.iconPath,
    required this.amoutOfFiles,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: CustomTheme.contentPadding),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: CustomTheme.colors.primaryColor,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Padding(
        padding: EdgeInsets.all(CustomTheme.contentPadding),
        child: Row(
          children: [
            SizedBox(
              height: 20,
              width: 20,
              child: SvgPicture.asset(iconPath),
            ),
            SizedBox(width: CustomTheme.contentPadding / 2),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    '$amoutOfFiles files',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: Colors.white30,
                        ),
                  ),
                ],
              ),
            ),
            Text('${volume}GB'),
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
