import 'package:flutter/material.dart';

abstract class CustomTheme {
  static Color primaryColor = const Color.fromARGB(255, 222, 38, 255);
  static Color secondaryColor = const Color.fromARGB(255, 62, 42, 61);
  static Color backgroundColor = const Color.fromARGB(255, 50, 33, 49);

  static double contentPadding = 16.0;

  static Icons icons = const Icons();
}

class Icons {
  final String docFile;
  final String documents;
  final String dropBox;
  final String excelFile;
  final String figmaFile;
  final String folder;
  final String googleDrive;
  final String logo;
  final String mediaFile;
  final String media;
  final String menuDashboar;
  final String menuDoc;
  final String menuNotification;
  final String menuProfile;
  final String menuSetting;
  final String menuStore;
  final String menuTask;
  final String menuTran;
  final String oneDrive;
  final String pdfFile;
  final String search;
  final String soundFile;
  final String unknown;
  final String xdFile;

  const Icons({
    this.docFile = '${_iconsPath}doc_file.svg',
    this.documents = '${_iconsPath}Documents.svg',
    this.dropBox = '${_iconsPath}drop_box.svg',
    this.excelFile = '${_iconsPath}excel_file.svg',
    this.figmaFile = '${_iconsPath}Figma_file.svg',
    this.folder = '${_iconsPath}folder.svg',
    this.googleDrive = '${_iconsPath}google_drive.svg',
    this.logo = '${_iconsPath}logo.svg',
    this.media = '${_iconsPath}media.svg',
    this.mediaFile = '${_iconsPath}media_file.svg',
    this.menuDashboar = '${_iconsPath}menu_dashboard.svg',
    this.menuDoc = '${_iconsPath}menu_doc.svg',
    this.menuNotification = '${_iconsPath}menu_notification.svg',
    this.menuProfile = '${_iconsPath}menu_profile.svg',
    this.menuSetting = '${_iconsPath}menu_setting.svg',
    this.menuStore = '${_iconsPath}menu_store.svg',
    this.menuTask = '${_iconsPath}menu_task.svg',
    this.menuTran = '${_iconsPath}menu_tran.svg',
    this.oneDrive = '${_iconsPath}one_drive.svg',
    this.pdfFile = '${_iconsPath}pdf_file.svg',
    this.search = '${_iconsPath}Search.svg',
    this.soundFile = '${_iconsPath}sound_file.svg',
    this.unknown = '${_iconsPath}unknown.svg',
    this.xdFile = '${_iconsPath}xd_file.svg',
  });

  static const String _iconsPath = 'assets/icons/';
}
