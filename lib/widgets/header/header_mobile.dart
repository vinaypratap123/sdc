import 'package:flutter/material.dart';
import 'package:sdc/app/app_colors.dart';
import 'package:sdc/app/app_style.dart';

class HeaderMobile extends StatefulWidget {
  final VoidCallback menuButton;
  const HeaderMobile({super.key, required this.menuButton});

  @override
  State<HeaderMobile> createState() => _HeaderMobileState();
}

class _HeaderMobileState extends State<HeaderMobile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
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
                "DSC",
                style: AppStyle.largeBoldTextStyle,
              ),
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: widget.menuButton,
            icon: const Icon(
              Icons.menu,
              color: AppColor.yellowPrimary,
            ),
          ),
          const SizedBox(
            width: 15,
          ),
        ],
      ),
    );
  }
}
