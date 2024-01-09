import 'package:flutter/material.dart';
import 'package:responsive_disign/src/config/theme/colors.dart';

class CloudStorageModel {
  final String svgSrc;
  final String title;
  final double totalStorage;
  final double percentage;
  final int amountOfFiles;
  final Color color;

  const CloudStorageModel({
    required this.amountOfFiles,
    required this.color,
    required this.percentage,
    required this.svgSrc,
    required this.title,
    required this.totalStorage,
  });
}

List<CloudStorageModel> listOfCloudStorageData = [
  CloudStorageModel(
    amountOfFiles: 2324,
    color: Colors.purple,
    percentage: 40,
    svgSrc: CustomTheme.icons.documents,
    title: 'Documents',
    totalStorage: 1.9,
  ),
  CloudStorageModel(
    amountOfFiles: 7744,
    color: Colors.pink,
    percentage: 49,
    svgSrc: CustomTheme.icons.googleDrive,
    title: 'Google Drive',
    totalStorage: 2.9,
  ),
  CloudStorageModel(
    amountOfFiles: 1004,
    color: Colors.red,
    percentage: 15,
    svgSrc: CustomTheme.icons.oneDrive,
    title: 'One Drive',
    totalStorage: 1.9,
  ),
  CloudStorageModel(
    amountOfFiles: 3842,
    color: Colors.orange,
    percentage: 20,
    svgSrc: CustomTheme.icons.dropBox,
    title: 'Documents',
    totalStorage: 3.0,
  ),
];
