// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:fruitsmarket/features/splash/presentation/splash_view.dart';
import 'package:get/get.dart';

void main() {
  runApp(const FruitMarket());
}

class FruitMarket extends StatelessWidget {
  const FruitMarket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(textTheme: TextTheme(
 headline2: TextStyle(
  fontWeight: FontWeight.bold,
          fontFamily: 'Poppins',fontSize: 15,color :Colors.black 
        ),
        headline3: TextStyle(
          fontFamily: 'Poppins',fontSize: 15,color :Colors.black 
        ),
        headline1 : TextStyle(fontFamily: 'Poppins')
      )),
      debugShowCheckedModeBanner: false,
      home: SplashView(),
    );
  }
}
