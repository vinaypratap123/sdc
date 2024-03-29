import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sdc/app/app_colors.dart';
import 'package:sdc/app/app_strings.dart';
import 'package:sdc/app/app_style.dart';
import 'package:sdc/widgets/custom_botton.dart';

class IntroCard extends StatefulWidget {
  final Color color;
  const IntroCard({super.key, required this.color});

  @override
  State<IntroCard> createState() => _IntroCardState();
}

class _IntroCardState extends State<IntroCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      width: 340,
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.email_outlined,
                  color: AppColor.yellowPrimary,
                  size: 40,
                ),
                Gap(10),
                Text(
                  "Email US",
                  style: AppStyle.largeBlackBoldTextStyle,
                ),
              ],
            ),
            Gap(10),
            Text(
              "vinaypratapknj12@gmail.com",
              style: AppStyle.mediumBlackTextStyle,
            ),
            Gap(30),
            CustomButton(
              btnName: AppString.appointment,
              icon: Icon(
                Icons.arrow_forward_outlined,
                color: AppColor.bgLight1,
              ),
            )
          ],
        ),
      ),
    );
  }
}
