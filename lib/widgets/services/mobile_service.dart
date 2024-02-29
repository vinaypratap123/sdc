import 'package:flutter/material.dart';
import 'package:sdc/app/app_colors.dart';

class MobileServices extends StatefulWidget {
  const MobileServices({Key? key}) : super(key: key);

  @override
  State<MobileServices> createState() => _MobileServicesState();
}

class _MobileServicesState extends State<MobileServices> {
  @override
  Widget build(BuildContext context) {
  final double height = MediaQuery.of(context).size.height;
  final double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Container(
          height: height*0.3,
          width: width*0.8,
          color: AppColor.yellowPrimary,
        ),
        Container(
         height: height*0.4,
          width: width*0.8,
          color: AppColor.bgLight2,
        ),
      ],
    );
  }
}
