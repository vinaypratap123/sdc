import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sdc/app/app_colors.dart';
import 'package:sdc/app/app_style.dart';
import 'package:sdc/app/constants.dart';

class HeaderDesktop extends StatefulWidget {
  final Function(int) onNavbarItemTap;
  const HeaderDesktop({super.key, required this.onNavbarItemTap});

  @override
  State<HeaderDesktop> createState() => _HeaderDesktopState();
}

class _HeaderDesktopState extends State<HeaderDesktop> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40,
          color: AppColor.bgLight1,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.location_on_outlined,
                      color: AppColor.yellowSecondary,
                      size: 20,
                    ),
                    Gap(5),
                    Text(
                      "Dentist in Noida",
                      style: AppStyle.mediumTextStyle,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      Icons.phone,
                      color: AppColor.yellowSecondary,
                      size: 20,
                    ),
                    Gap(5),
                    Text(
                      "+91 123456789",
                      style: AppStyle.mediumTextStyle,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        Container(
          height: 90,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.transparent,
                AppColor.bgLight1,
              ],
            ),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: GestureDetector(
                  onTap: () {},
                  child: const Text(
                    "SDC",
                    style: AppStyle.largeBoldTextStyle,
                  ),
                ),
              ),
              const Spacer(),
              for (int i = 0; i < Constants.navbarItem.length; i++)
                Padding(
                  padding: const EdgeInsets.only(right: 20),
                  child: TextButton(
                    onPressed: () {
                      widget.onNavbarItemTap(i);
                    },
                    child: Text(
                      Constants.navbarItem[i],
                      style: AppStyle.mediumBoldTextStyle,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
