import 'package:flutter/material.dart';
import 'package:sdc/app/app_colors.dart';
import 'package:sdc/app/app_style.dart';

class AllRight extends StatefulWidget {
  const AllRight({super.key});

  @override
  State<AllRight> createState() => _AllRightState();
}

class _AllRightState extends State<AllRight> {
  late String year;
  @override
  void initState() {
    super.initState();
    year = DateTime.now().year.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: double.infinity,
      color: AppColor.bgLight2,
      child: Center(
        child: Text(
          "\u00a9 $year All Right Reserved By SDC",
          style: AppStyle.footerTextStyle,
        ),
      ),
    );
  }
}
