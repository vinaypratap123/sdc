import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sdc/app/app_colors.dart';
import 'package:sdc/app/constants.dart';
import 'package:sdc/widgets/about/about_desktop.dart';
import 'package:sdc/widgets/about/about_mobile.dart';
import 'package:sdc/widgets/cards/intro_card.dart';
import 'package:sdc/widgets/cards/mobile_intro_card.dart';
import 'package:sdc/widgets/header/drawer.dart';
import 'package:sdc/widgets/header/header_desktop.dart';
import 'package:sdc/widgets/header/header_mobile.dart';
import 'package:sdc/widgets/services/desktop_services.dart';
import 'package:sdc/widgets/services/mobile_service.dart';
import 'package:sdc/widgets/slider/silder_desktop.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  CarouselController buttonCarouselController = CarouselController();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _messageController = TextEditingController();

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final scrollController = ScrollController();

  Color color = AppColor.whiteSecondary;

  final List<GlobalKey> navbarKeys = List.generate(4, (index) => GlobalKey());

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final double width = screenSize.width;

    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: AppColor.scaffoldBg,

          ///---------> MOBILE DRAWER

          endDrawer: constraints.maxWidth >= Constants.desktopWidth
              ? null
              : MobileDrawer(
                  onNavbarItemTap: (int navIndex) {
                    scaffoldKey.currentState?.closeEndDrawer();
                    scrollToIndex(navIndex);
                  },
                ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            controller: scrollController,
            child: Column(
              children: [
                ///---------> HEADER SECTION
                SizedBox(
                  key: navbarKeys.first,
                ),

                ///--------->header desktop
                if (constraints.maxWidth >= Constants.desktopWidth)
                  HeaderDesktop(
                    onNavbarItemTap: (int navIndex) {
                      scrollToIndex(navIndex);
                    },
                  )

                ///--------->header phone
                else
                  HeaderMobile(
                    menuButton: () {
                      scaffoldKey.currentState?.openEndDrawer();
                    },
                  ),
                //---------> Slider section
                CarouselSlider(
                  items: const [
                    SliderDesktop(),
                  ],
                  carouselController: buttonCarouselController,
                  options: CarouselOptions(
                    autoPlay: true,
                    height: 500,
                    viewportFraction: 1,
                    initialPage: 3,
                  ),
                ),

                ///--------->main section
                const Gap(20),
                SizedBox(
                  width: double.infinity,
                  child: Wrap(
                    spacing: 15,
                    runSpacing: 15,
                    alignment: WrapAlignment.center,
                    children: List.generate(
                      3,
                      (index) => constraints.maxWidth >= Constants.desktopWidth
                          ? IntroCard(color: color)
                          : MobileIntroCard(color: color),
                    ),
                  ),
                ),
                const Gap(20),
                if (constraints.maxWidth >= Constants.desktopWidth)
                  const AboutDesktop()
                else
                  const AboutMobile(),
                const Gap(20),
                SizedBox(
                  width: double.infinity,
                  child: Wrap(
                    spacing: 20,
                    runSpacing: 20,
                    alignment: WrapAlignment.center,
                    children: List.generate(
                      6,
                      (index) => constraints.maxWidth >= Constants.desktopWidth
                          ? const DesktopServices()
                          : const MobileServices(),
                    ),
                  ),
                ),

                Container(
                  height: 4000,
                  color: AppColor.bgLight2,
                ),

                ///main desktop
                // if (constraints.maxWidth >= Constants.desktopWidth)
                //   const MainDesktop()

                ///main mobile
                // else
                // const MainMobile(),

                ///skills section

                // Container(
                //   key: navbarKeys[1],
                //   padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                //   width: width,
                //   color: AppColor.bgLight1,
                //   child: Column(
                //     mainAxisSize: MainAxisSize.min,
                //     children: [
                // const Text(
                //   AppString.whatICanDo,
                //   style: AppStyle.mainMobileBodyStyle,
                // ),
                // const SizedBox(
                //   height: 50,
                // ),
                //desktop skills
                // if (constraints.maxWidth >= Constants.desktopWidth)
                //   const SkillsDesktop()
                // mobile skills
                // else
                //   const SkillsMobile(),
                //     ],
                //   ),
                // ),

                ///projects section
                // ProjectSection(
                //   key: navbarKeys[2],
                // ),

                ///contacts section
                // ContactsSection(
                //   key: navbarKeys[3],
                //   nameController: _nameController,
                //   emailController: _emailController,
                //   messageController: _messageController,
                // ),

                ///footer section
                // const Footer(),
              ],
            ),
          ),
        );
      },
    );
  }

  void scrollToIndex(int navIndex) {
    final key = navbarKeys[navIndex];
    Scrollable.ensureVisible(
      key.currentContext!,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
    );
  }
}
