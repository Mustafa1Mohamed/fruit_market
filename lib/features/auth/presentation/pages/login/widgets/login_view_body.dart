import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruit_market/core/utils/size_config.dart';
import 'package:fruit_market/features/auth/presentation/pages/complete_information/complete_info.dart';
import 'package:fruit_market/features/auth/presentation/pages/login/widgets/custom_way_login.dart';
import 'package:get/get.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.defaultSize! * 7),
        SizedBox(
          height: SizeConfig.defaultSize! * 17,
          child: Image.asset('assets/images/logo.png'),
        ),
        const Text.rich(
          TextSpan(
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 51,
              color: Color(0xff69a03a),
            ),
            children: [
              TextSpan(
                text: 'F',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
              TextSpan(
                text: 'ruit Market',
                style: TextStyle(fontSize: 42, fontWeight: FontWeight.w700),
              ),
            ],
          ),
          textHeightBehavior: TextHeightBehavior(
            applyHeightToFirstAscent: false,
          ),
          textAlign: TextAlign.left,
        ),
        SizedBox(height: SizeConfig.defaultSize! * 20),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomWayLogin(
              icon: FontAwesomeIcons.googlePlusG,
              color: Colors.red,
            ),
            const SizedBox(width: 15),
            CustomWayLogin(
              icon: FontAwesomeIcons.facebook,
              color: Colors.blue,
              onTap: () {
                Get.to(
                  () => const CompleteInfo(),
                  transition: Transition.rightToLeft,
                  duration: const Duration(milliseconds: 600),
                );
              },
            ),
          ],
        ),
      ],
    );
  }
}
