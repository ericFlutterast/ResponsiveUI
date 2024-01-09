import 'package:responsive_disign/src/config/theme/colors.dart';

class DetailsItemData {
  final String iconPath;
  final String title;
  final double volume;
  final int amoutOfFiles;

  const DetailsItemData({
    required this.title,
    required this.volume,
    required this.iconPath,
    required this.amoutOfFiles,
  });
}

List<DetailsItemData> detailsData = [
  DetailsItemData(
    title: 'Document Files',
    volume: 1.3,
    iconPath: CustomTheme.icons.documents,
    amoutOfFiles: 2343,
  ),
  DetailsItemData(
    title: 'Media files',
    volume: 15.13,
    iconPath: CustomTheme.icons.media,
    amoutOfFiles: 2323,
  ),
  DetailsItemData(
    title: 'Other files',
    volume: 1.3,
    iconPath: CustomTheme.icons.folder,
    amoutOfFiles: 2221,
  ),
  DetailsItemData(
    title: 'Unknow',
    volume: 0.7,
    iconPath: CustomTheme.icons.unknown,
    amoutOfFiles: 443,
  ),
];
