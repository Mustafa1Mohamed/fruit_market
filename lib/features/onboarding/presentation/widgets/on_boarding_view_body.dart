import 'package:flutter/material.dart';
import 'package:fruit_market/core/utils/size_config.dart';
import 'package:fruit_market/core/widgets/custom_buttons.dart';
import 'package:fruit_market/features/auth/presentation/pages/login/login_view.dart';
import 'package:fruit_market/features/onboarding/presentation/widgets/custom_indicator.dart';
import 'package:fruit_market/features/onboarding/presentation/widgets/page_view_items.dart';
import 'package:get/get.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  PageController? pageController;
  @override
  void initState() {
    pageController = PageController(initialPage: 0)..addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PageViewItems(pageController: pageController),
        Positioned(
          bottom: SizeConfig.defaultSize! * 25,
          left: 0,
          right: 0,
          child: CustomIndicator(
            dotIndex: pageController!.hasClients ? pageController?.page : 0,
          ),
        ),
        Visibility(
          visible:
              pageController!.hasClients
                  ? pageController?.page == 2
                      ? false
                      : true
                  : true,
          child: Positioned(
            top: SizeConfig.defaultSize! * 6,
            right: SizeConfig.defaultSize! * 4,
            child: GestureDetector(
              onTap: () {
                pageController!.jumpToPage(2);
              },
              child: const Text(
                'Skip',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 14,
                  color: Color(0xff898989),
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
        ),
        Positioned(
          left: SizeConfig.defaultSize! * 13,
          right: SizeConfig.defaultSize! * 13,
          bottom: SizeConfig.defaultSize! * 10,
          child: CustomGeneralButton(
            onTap: () {
              if (pageController!.page! < 2) {
                pageController?.nextPage(
                  duration: const Duration(milliseconds: 600),
                  curve: Curves.easeIn,
                );
              } else {
                Get.to(
                  () => const LoginView(),
                  transition: Transition.rightToLeft,
                  duration: const Duration(milliseconds: 600),
                );
              }
            },
            txt:
                pageController!.hasClients
                    ? pageController?.page == 2
                        ? 'Get Started'
                        : 'Next'
                    : 'Next',
          ),
        ),
      ],
    );
  }
}
