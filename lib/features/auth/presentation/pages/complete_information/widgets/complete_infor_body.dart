import 'package:flutter/cupertino.dart';
import 'package:fruit_market/core/utils/size_config.dart';
import 'package:fruit_market/core/widgets/custom_buttons.dart';
import 'package:fruit_market/features/auth/presentation/pages/complete_information/widgets/complete_info_item.dart';

class CompleteInforBody extends StatelessWidget {
  const CompleteInforBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          SizedBox(height: SizeConfig.defaultSize! * 10),
          const CompleteInfoItem(
            txt: 'Enter Your Name',
            maxLines: 1,
            textInputType: TextInputType.text,
          ),
          SizedBox(height: SizeConfig.defaultSize! * 2),
          const CompleteInfoItem(
            txt: 'Enter Your Phone Number',
            maxLines: 1,
            textInputType: TextInputType.phone,
          ),
          SizedBox(height: SizeConfig.defaultSize! * 2),
          const CompleteInfoItem(
            txt: 'Enter Your Address',
            maxLines: 5,
            textInputType: TextInputType.text,
          ),
          SizedBox(height: SizeConfig.defaultSize! * 5),
          const CustomGeneralButton(txt: 'Login'),
        ],
      ),
    );
  }
}
