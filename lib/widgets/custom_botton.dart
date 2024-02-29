import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sdc/app/app_colors.dart';
import 'package:sdc/app/app_style.dart';

class CustomButton extends StatelessWidget {
  final double? height;
  final double? width;
  final double? borderRadius;
  final Color? btnColor;
  final Widget? icon;
  final String btnName;
  const CustomButton({
    super.key,
    this.height,
    this.width,
    this.borderRadius,
    this.btnColor,
    this.icon,
    required this.btnName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 40,
      width: width ?? 150,
      decoration: BoxDecoration(
        border: Border.all(
          color: btnColor ?? AppColor.yellowPrimary,
        ),
        borderRadius: BorderRadius.circular(borderRadius ?? 30),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(btnName, style: AppStyle.mediumBlackTextStyle),
            icon ?? const Gap(0),
          ],
        ),
      ),
    );
  }
}
