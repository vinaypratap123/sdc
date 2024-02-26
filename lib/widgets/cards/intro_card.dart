import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sdc/app/app_colors.dart';
import 'package:sdc/app/app_style.dart';

class IntroCard extends StatefulWidget {
  final Color color;
  const IntroCard({Key? key, required this.color}) : super(key: key);

  @override
  _IntroCardState createState() => _IntroCardState();
}

class _IntroCardState extends State<IntroCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      width: 340,
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
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
            const Gap(10),
            const Text(
              "vinaypratapknj12@gmail.comvinaypratapknj12@gmail.comvinaypratapknj12@gmail.comvinaypratapknj12@gmail.com",
              style: AppStyle.mediumBlackTextStyle,
            ),
            const Gap(30),
            Container(
              height: 40,
              width: 150,
              decoration: BoxDecoration(
                border: Border.all(
                  color: AppColor.yellowPrimary,
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Appointment"),
                    Icon(Icons.arrow_right_alt_outlined),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
