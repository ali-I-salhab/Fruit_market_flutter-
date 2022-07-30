import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import 'package:fruitsmarket/core/utils/size_config.dart';
import 'package:fruitsmarket/features/auth/presentation/pages/login/login_view.dart';
import 'package:fruitsmarket/features/auth/presentation/pages/login/widgets/loginViewbody.dart';
import 'package:fruitsmarket/features/onboarding/presentaton/widgets/custom_indicator.dart';
import 'package:fruitsmarket/features/onboarding/presentaton/widgets/custompageview.dart';
import 'package:get/get.dart';

import '../../../../core/widgets/custom_buttons.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({Key? key}) : super(key: key);

  @override
  _OnBoardingViewBodyState createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  PageController? pageController;

  @override
  void initState() {
    pageController = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {
          print('ssssssssssssss');
        });
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Stack(
      children: [
        //GestureDetector(,child: Text('ee'),),
        CustomPageView(
          pc: pageController,
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: SizeConfig.DefaultSize! * 15,
          child: CustomIndicator(
            dotIndex: pageController!.hasClients ? pageController?.page : 0,
          ),
        ),
        Visibility(
          visible: pageController!.hasClients
              ? (pageController?.page == 2 ? false : true)
              : true,
          child: Positioned(
            top: SizeConfig.DefaultSize! * 10,
            right: 32,
            child: Text(
              'Skip',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 14,
                color: const Color(0xff898989),
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ),
        Positioned(
            left: SizeConfig.DefaultSize! * 10,
            right: SizeConfig.DefaultSize! * 10,
            bottom: SizeConfig.DefaultSize! * 7,
            child: CustomGeneralButton(
              onTap: () {
              
                if (pageController!.page! < 2) {
                  pageController?.nextPage(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeIn);
                } else {
                  Get.to(() => LoginView(), transition: Transition.rightToLeft , duration: Duration(milliseconds: 500));
                }
              },
              text: pageController!.hasClients
                  ? (pageController?.page == 2 ? 'Get started' : 'Next')
                  : 'Next',
            )),
      ],
    );
  }
}
