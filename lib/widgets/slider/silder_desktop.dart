import 'package:flutter/material.dart';
import 'package:sdc/app/app_images.dart';

class SliderDesktop extends StatefulWidget {
  const SliderDesktop({super.key});

  @override
  State<SliderDesktop> createState() => _SliderDesktopState();
}

class _SliderDesktopState extends State<SliderDesktop> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Image.asset(
        AppImage.pic1,
        fit: BoxFit.cover,
      ),
    );
  }
}
