import 'package:flutter/material.dart';
import 'package:sdc/app/app_colors.dart';
import 'package:sdc/app/app_strings.dart';
import 'package:sdc/app/app_style.dart';
import 'package:sdc/app/constants.dart';
import 'package:sdc/widgets/custom_text_field.dart';

class ContactsSection extends StatefulWidget {
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController messageController;
  const ContactsSection({
    super.key,
    required this.nameController,
    required this.emailController,
    required this.messageController,
  });

  @override
  State<ContactsSection> createState() => _ContactsSectionState();
}

class _ContactsSectionState extends State<ContactsSection> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
      width: double.infinity,
      color: AppColor.bgLight1,
      child: Column(
        children: [
          const Text(
            AppString.bookAnAppointment,
            style: AppStyle.mainMobileBodyStyle,
          ),
          const SizedBox(
            height: 50,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,
              maxHeight: 100,
            ),
            child: LayoutBuilder(
              builder: (context, constraints) {
                if (constraints.maxWidth >= Constants.desktopWidth) {
                  return desktopForm();
                } else {
                  return mobilForm();
                }
              },
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          //message field
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,
            ),
            child: CustomTextField(
              controller: widget.messageController,
              hintText: AppString.message,
              maxLine: 10,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          //send button
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,
            ),
            child: SizedBox(
              width: double.maxFinite,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.yellowPrimary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                child: const Text(
                  AppString.submit,
                  style: AppStyle.buttonStyle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row desktopForm() {
    return Row(
      children: [
        //name field
        Flexible(
          child: CustomTextField(
            controller: widget.nameController,
            hintText: AppString.name,
            maxLine: 1,
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        //email field
        Flexible(
          child: CustomTextField(
            controller: widget.emailController,
            hintText: AppString.email,
            maxLine: 1,
          ),
        ),
      ],
    );
  }

  Column mobilForm() {
    return Column(
      children: [
        //name field
        Flexible(
          child: CustomTextField(
            controller: widget.nameController,
            hintText: AppString.name,
            maxLine: 1,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        //email field
        Flexible(
          child: CustomTextField(
            controller: widget.emailController,
            hintText: AppString.email,
            maxLine: 1,
          ),
        ),
      ],
    );
  }
}
