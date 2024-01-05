import 'package:flutter/material.dart';
import 'package:responsive_disign/src/config/theme/colors.dart';
import 'package:responsive_disign/src/modules/main_screen/presentation/widgets/drawer_list_tile.dart';

class _DrawerData {
  final String title;
  final String iconPath;
  final void Function() onTap;

  _DrawerData({
    required this.onTap,
    required this.title,
    required this.iconPath,
  });
}

List<_DrawerData> _listOfDrawerData = [
  _DrawerData(onTap: () {}, title: 'Dashboard', iconPath: CustomTheme.icons.menuDashboar),
  _DrawerData(onTap: () {}, title: 'Transaction', iconPath: CustomTheme.icons.menuTran),
  _DrawerData(onTap: () {}, title: 'Task', iconPath: CustomTheme.icons.menuTask),
  _DrawerData(onTap: () {}, title: 'Documents', iconPath: CustomTheme.icons.menuDoc),
  _DrawerData(onTap: () {}, title: 'Store', iconPath: CustomTheme.icons.menuStore),
  _DrawerData(onTap: () {}, title: 'Notifications', iconPath: CustomTheme.icons.menuNotification),
  _DrawerData(onTap: () {}, title: 'Profile', iconPath: CustomTheme.icons.menuProfile),
  _DrawerData(onTap: () {}, title: 'Settings', iconPath: CustomTheme.icons.menuSetting),
];

class SideMenu extends StatelessWidget {
  const SideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: CustomTheme.backgroundColor,
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(child: Image.asset('assets/images/logo.png')),
            ...List.generate(
              _listOfDrawerData.length,
              (index) => DrawerListTile(
                onTap: _listOfDrawerData[index].onTap,
                title: _listOfDrawerData[index].title,
                iconPath: _listOfDrawerData[index].iconPath,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
