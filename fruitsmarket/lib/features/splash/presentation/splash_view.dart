
import 'package:flutter/material.dart';
import 'package:fruitsmarket/core/const.dart';
import 'package:fruitsmarket/features/splash/presentation/widgets/spalshviewbody.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:MaiColor, body: SplashViewBody());
  }
}
// 689336
// class SplashView extends StatefulWidget {
//   SplashView({Key? key}) : super(key: key);

//   @override
//   State<SplashView> createState() => _SplashViewState();
// }

// class _SplashViewState extends State<SplashView>
//     with SingleTickerProviderStateMixin {
//   AnimationController? animationcontroller;
//   Animation<double>? fadeanimation;
//   @override
//   void initState() {
//     animationcontroller =
//         AnimationController(vsync: this, duration: Duration(seconds: 1));
//     fadeanimation =
//         Tween<double>(begin: .0, end: 1).animate(animationcontroller!);
//     animationcontroller?.repeat();
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Color(0xff689336),
//         body: FadeTransition(opacity: fadeanimation!, child: SplashViewBody()));
//   }
// }
// opacity of the splash screen 
