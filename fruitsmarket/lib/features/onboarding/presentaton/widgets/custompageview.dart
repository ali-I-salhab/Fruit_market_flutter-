import 'package:flutter/material.dart';
import 'package:fruitsmarket/core/utils/size_config.dart';
import 'package:fruitsmarket/features/onboarding/presentaton/widgets/pageviewitem.dart';

class CustomPageView extends StatelessWidget {
  const CustomPageView({Key? key, @required this.pc}) : super(key: key);
  final PageController? pc;
  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pc,
      children: [
        
        PageViewItem(
          image: 'assets/images/onboarding1.png',
          title: 'E Shopping',
          subTitle: 'Explore  top organic fruits & grab them',
        ),
        PageViewItem(
          image: 'assets/images/onboarding2.png',
          title: 'Delivery on the way',
          subTitle: 'Get your order by speed delivery',
        ),
        PageViewItem(
          image: 'assets/images/onboarding3.png',
          title: 'Delivery Arrived',
          subTitle: 'Order is arrived at your Place',
        ),
      ],
    );
  }
}
