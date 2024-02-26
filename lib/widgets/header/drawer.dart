import 'package:flutter/material.dart';
import 'package:sdc/app/app_colors.dart';
import 'package:sdc/app/app_style.dart';
import 'package:sdc/app/constants.dart';

class MobileDrawer extends StatefulWidget {
  final Function(int) onNavbarItemTap;
  const MobileDrawer({super.key, required this.onNavbarItemTap});

  @override
  State<MobileDrawer> createState() => _MobileDrawerState();
}

class _MobileDrawerState extends State<MobileDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.8,
      backgroundColor: AppColor.scaffoldBg,
      child: ListView(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 20,
                bottom: 20,
              ),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(
                  Icons.close,
                  color: AppColor.yellowPrimary,
                ),
              ),
            ),
          ),
          for (int i = 0; i < Constants.navbarItem.length; i++)
            ListTile(
              contentPadding: const EdgeInsets.symmetric(horizontal: 30.0),
              titleTextStyle: AppStyle.mediumBoldTextStyle,
              onTap: () {
                widget.onNavbarItemTap(i);
              },
              leading: Icon(
                Constants.navbarIcon[i],
                color: AppColor.yellowPrimary,
              ),
              title: Text(
                Constants.navbarItem[i],
                style: AppStyle.mediumBoldTextStyle,
              ),
            ),
        ],
      ),
    );
  }
}
