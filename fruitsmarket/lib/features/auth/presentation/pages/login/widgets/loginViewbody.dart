import 'package:flutter/material.dart';
import 'package:fruitsmarket/core/const.dart';
import 'package:fruitsmarket/core/utils/size_config.dart';
import 'package:fruitsmarket/core/widgets/custom_buttons.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: SizeConfig.ScreenWidth,
      child: Column(
        children: [
          SizedBox(
            height: SizeConfig.DefaultSize! * 14,
          ),
          SizedBox(
              height: SizeConfig.DefaultSize! * 18,
              child: Image.asset(
                'assets/images/logo.png',
                alignment: Alignment.topRight,
              )),
          // Container()
          SizedBox(
            height: SizeConfig.DefaultSize! * 3,
          ),
          const Text(
            'FruitMarket',
            style: TextStyle(
                color: MaiColor,
                fontSize: 52,
                fontWeight: FontWeight.bold,
                fontFamily: 'Poppins'),
          ),
          SizedBox(
            height: SizeConfig.DefaultSize! * 3,
          ),
          Row(
            children: const [
              Flexible(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.all(0),
                    child: CustomButtonWithIcon(
                      text: 'Google',
                    ),
                  )),
              Flexible(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.all(1),
                    child: CustomButtonWithIcon(
                      text: 'Facebook',
                    ),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
