import 'package:flutter/material.dart';
import 'package:sdc/app/app_colors.dart';

class GalleryMobile extends StatefulWidget {
  const GalleryMobile({super.key});

  @override
  State<GalleryMobile> createState() => _GalleryMobileState();
}

class _GalleryMobileState extends State<GalleryMobile> {
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
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
            width: width * 0.9,
            color: AppColor.yellowPrimary,
          );
        },
      ),
    );
  }
}
