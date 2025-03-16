import 'package:flutter/material.dart';
import 'package:fruit_market/core/constants.dart';
import 'package:fruit_market/core/utils/size_config.dart';
import 'package:fruit_market/features/onboarding/presentation/on_boarding_view.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationController;
  Animation<double>? fading;
  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    fading = Tween<double>(begin: 0.0, end: 1.0).animate(animationController!);
    animationController?.repeat(reverse: true);
    getToNextView();
    super.initState();
  }

  @override
  void dispose() {
    animationController?.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Column(
        children: [
          const Spacer(),
          FadeTransition(
            opacity: fading!,
            child: const Text(
              'Fruit Market',
              style: TextStyle(
                fontSize: 51,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins',
              ),
            ),
          ),
          Image.asset('assets/images/splash_view_image.png'),
          const SizedBox(height: 20),
        ],
      ),
    );
  }

  void getToNextView() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(() => const OnBoardingView(), transition: Transition.fade);
    });
  }
}
