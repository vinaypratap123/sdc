import 'package:flutter/material.dart';
import 'package:sdc/app/app_colors.dart';

class GalleryDesktop extends StatefulWidget {
  const GalleryDesktop({super.key});

  @override
  State<GalleryDesktop> createState() => _GalleryDesktopState();
}

class _GalleryDesktopState extends State<GalleryDesktop> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      color: AppColor.bgLight1,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 100,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 5,
              vertical: 20,
            ),
            height: 300,
            width: 400,
            color: AppColor.yellowPrimary,
          );
        },
      ),
    );
  }
}
