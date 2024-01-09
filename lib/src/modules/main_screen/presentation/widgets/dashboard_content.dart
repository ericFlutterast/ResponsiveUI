import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_disign/src/config/theme/colors.dart';
import 'package:responsive_disign/src/modules/main_screen/domain/models/cloud_storage_data.dart';

class DashboardContent extends StatelessWidget {
  const DashboardContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'My files',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            ElevatedButton.icon(
              style: TextButton.styleFrom(
                backgroundColor: CustomTheme.colors.primaryColor,
                padding: EdgeInsets.symmetric(
                  horizontal: CustomTheme.contentPadding * 1.5,
                  vertical: CustomTheme.contentPadding,
                ),
              ),
              onPressed: () {},
              icon: const Icon(Icons.add),
              label: const Text('add new'),
            ),
          ],
        ),
        SizedBox(height: CustomTheme.contentPadding),
        GridView.builder(
          shrinkWrap: true,
          itemCount: 4,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: listOfCloudStorageData.length,
            crossAxisSpacing: CustomTheme.contentPadding,
          ),
          itemBuilder: (context, index) => Container(
            decoration: BoxDecoration(
              color: CustomTheme.colors.secondaryColor,
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: Padding(
              padding: EdgeInsets.all(CustomTheme.contentPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: EdgeInsets.all(CustomTheme.contentPadding / 2),
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          color: listOfCloudStorageData[index].color.withOpacity(0.1),
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                        ),
                        child: SvgPicture.asset(
                          listOfCloudStorageData[index].svgSrc,
                          colorFilter: ColorFilter.mode(listOfCloudStorageData[index].color, BlendMode.srcIn),
                        ),
                      ),
                      const Icon(Icons.more_vert),
                    ],
                  ),
                  Text(
                    listOfCloudStorageData[index].title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Stack(
                    children: [
                      Container(
                        height: 5,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: listOfCloudStorageData[index].color.withOpacity(0.1),
                          borderRadius: const BorderRadius.all(Radius.circular(10)),
                        ),
                      ),
                      LayoutBuilder(
                        builder: (context, constraints) => Container(
                          height: 5,
                          width: constraints.maxWidth * listOfCloudStorageData[index].percentage / 100,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                              CustomTheme.colors.secondaryColor,
                              listOfCloudStorageData[index].color,
                            ]),
                            borderRadius: const BorderRadius.all(Radius.circular(10)),
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${listOfCloudStorageData[index].amountOfFiles} files',
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: Colors.white30,
                              fontSize: 11,
                            ),
                      ),
                      Text('${listOfCloudStorageData[index].totalStorage}GB'),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
