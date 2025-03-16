import 'package:flutter/cupertino.dart';
import 'package:fruit_market/features/onboarding/presentation/widgets/page_item.dart';

class PageViewItems extends StatelessWidget {
  const PageViewItems({super.key,@required this.pageController});
  final PageController? pageController;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: const [
        PageItem(
          image: 'assets/images/onboarding1.png',
          txt1: 'E Shopping',
          txt2: 'Explore top organic fruits & grab them',
        ),
        PageItem(
          image: 'assets/images/onboarding2.png',
          txt1: 'Delivery on the way',
          txt2: 'Get your order by speed delivery',
        ),
        PageItem(
          image: 'assets/images/onboarding3.png',
          txt1: 'Delivery arrived',
          txt2: 'Order is arrived at your place',
        ),
      ],
    );
  }
}
