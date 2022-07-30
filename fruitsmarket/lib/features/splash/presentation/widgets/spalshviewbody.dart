import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../onboarding/presentaton/onboarding_view.dart';

class SplashViewBody extends StatefulWidget {
  SplashViewBody({Key? key}) : super(key: key);

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  AnimationController? animationcontoller;
  Animation<double>? fadinganimation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animationcontoller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    fadinganimation =
        Tween<double>(begin: .0, end: 1).animate(animationcontoller!);
    // ..addListener(() {
    //   setState(() {
    //     if (animationcontoller!.isCompleted) {
    //       animationcontoller!.repeat(reverse: true);
    //     }
    //   });
    // });
    animationcontoller!.repeat();
    GoToNextPage();
  }

  @override
  void dispose() {
    animationcontoller!.dispose();

    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          const Spacer(),
          FadeTransition(
            opacity: fadinganimation!,
            child: const Text(
              'FruitMarket',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 52,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins'),
            ),
          ),

          // AnimatedBuilder(
          //   animation: fadinganimation!,
          //   builder: (context, _) => Opacity(
          //     opacity: fadinganimation!.value,
          //     child: Text(
          //       'FruitMarket',
          //       style: TextStyle(
          //           color: Colors.white,
          //           fontSize: 52,
          //           fontWeight: FontWeight.bold,
          //           fontFamily: 'Poppins'),
          //     ),
          //   ),
          // ),
          //  Spacer(),
          Image.asset('assets/images/splash_view_image.png')
        ],
      ),
    );
  }

  void GoToNextPage() {
    Future.delayed(Duration(seconds: 3), () {
      Get.to(() => OnBoardingView(), transition: Transition.fade);
    });
  }
}
// implicit animation 
//start -----------------> end without control




// explicit animation 
// give u controller to animation set time start end repeat  