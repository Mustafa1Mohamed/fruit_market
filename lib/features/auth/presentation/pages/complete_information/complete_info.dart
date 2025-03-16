import 'package:flutter/material.dart';
import 'package:fruit_market/features/auth/presentation/pages/complete_information/widgets/complete_infor_body.dart';

class CompleteInfo extends StatelessWidget {
  const CompleteInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: CompleteInforBody(),
    );
  }
}
