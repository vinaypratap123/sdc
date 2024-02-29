import 'package:flutter/material.dart';
import 'package:sdc/app/app_colors.dart';

class DesktopServices extends StatefulWidget {
  const DesktopServices({Key? key}) : super(key: key);

  @override
  State<DesktopServices> createState() => _DesktopServicesState();
}

class _DesktopServicesState extends State<DesktopServices> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 300,
          width: 400,
          color: AppColor.yellowPrimary,
        ),
        Container(
          height: 400,
          width: 400,
          color: AppColor.bgLight2,
        ),
      ],
    );
  }
}
