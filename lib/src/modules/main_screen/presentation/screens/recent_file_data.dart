import 'package:responsive_disign/src/config/theme/colors.dart';

class RecentFileModel {
  final String icon;
  final String title;
  final String date;
  final String size;

  const RecentFileModel({
    required this.date,
    required this.icon,
    required this.size,
    required this.title,
  });
}

List<RecentFileModel> recentlyDataList = [
  RecentFileModel(
    date: '01-03-2023',
    icon: CustomTheme.icons.xdFile,
    size: '19.5mb',
    title: 'XD file',
  ),
  RecentFileModel(
    date: '01-07-2023',
    icon: CustomTheme.icons.figmaFile,
    size: '19.5mb',
    title: 'Figma',
  ),
  RecentFileModel(
    date: '45-09-2023',
    icon: CustomTheme.icons.docFile,
    size: '19.5mb',
    title: 'Docs',
  ),
  RecentFileModel(
    date: '01-01-2024',
    icon: CustomTheme.icons.soundFile,
    size: '19.5mb',
    title: 'Sound',
  ),
  RecentFileModel(
    date: '09-01-2024',
    icon: CustomTheme.icons.mediaFile,
    size: '19.5mb',
    title: 'mediaFile',
  ),
  RecentFileModel(
    date: '08-11-2019',
    icon: CustomTheme.icons.excelFile,
    size: '19.5mb',
    title: 'Exwl',
  ),
  RecentFileModel(
    date: '07-05-2019',
    icon: CustomTheme.icons.soundFile,
    size: '19.5mb',
    title: 'Sound',
  ),
];
