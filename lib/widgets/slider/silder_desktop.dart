import 'package:flutter/material.dart';
import 'package:sdc/app/app_colors.dart';

class SliderDesktop extends StatefulWidget {
  const SliderDesktop({super.key});

  @override
  State<SliderDesktop> createState() => _SliderDesktopState();
}

class _SliderDesktopState extends State<SliderDesktop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      width: double.infinity,
      color: AppColor.yellowPrimary,
      child: Image.asset(
        "assets/images/pic1.jpeg",
        fit: BoxFit.cover,
      ),
    );
  }
}
