import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sdc/app/app_colors.dart';
import 'package:sdc/app/app_images.dart';
import 'package:sdc/app/app_strings.dart';
import 'package:sdc/app/app_style.dart';

class AboutMobile extends StatefulWidget {
  const AboutMobile({super.key});

  @override
  State<AboutMobile> createState() => _AboutMobileSTATE();
}

class _AboutMobileSTATE extends State<AboutMobile> {
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return SizedBox(
      child: Column(
        children: [
          SizedBox(
            width: width * 0.8,
            child: Image.asset(
              AppImage.pic1,
            ),
          ),
          SizedBox(
            width: width * 0.8,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 15,
                        width: 15,
                        decoration: const BoxDecoration(
                          color: AppColor.yellowSecondary,
                          shape: BoxShape.circle,
                        ),
                      ),
                      const Gap(10),
                      const Text(
                        AppString.aboutUs,
                        style: AppStyle.largeBoldTextStyle,
                      ),
                      const Gap(10),
                      Container(
                        height: 15,
                        width: 15,
                        decoration: const BoxDecoration(
                          color: AppColor.yellowSecondary,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ],
                  ),
                  const Gap(30),
                  const Text(
                    "Where does it come from Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32.The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from de Finibus Bonorum et Malorum by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.",
                    textAlign: TextAlign.justify,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
