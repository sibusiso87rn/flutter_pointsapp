import 'package:flutter/material.dart';

import '../controllers/routing_controller.dart';
import '../constants/colors/custom_colors.dart';

class SignupWidget extends StatelessWidget {
  Container _getTextButton(
      final String buttonText, final BuildContext context) {
    return Container(
      child: TextButton(
        onPressed: () {},
        child: Text(
          buttonText,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 17,
            fontFamily: 'Helvetica',
            color: CustomColors.bold_text_color,
          ),
        ),
      ),
    );
  }

  SizedBox _getSizedBoxedButton(
      final String buttonText, final BuildContext context) {
    final double _width = MediaQuery.of(context).size.width - 10;

    return SizedBox(
      width: _width,
      height: 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: CustomColors.button_color,
        ),
        onPressed: () {
          buttonText.compareTo('Signup') == 0
              ? Navigator.of(context)
                  .pushNamed(RoutingController.getSharedRouting.signUp)
              : Navigator.of(context)
                  .pushNamed(RoutingController.getSharedRouting.logon);
        },
        child: Text(
          buttonText,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Helvetica',
            color: CustomColors.bold_text_color,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            child: _getSizedBoxedButton('Login', context),
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            child: _getSizedBoxedButton('Signup', context),
          ),
          SizedBox(
            height: 20,
          ),
          _getTextButton('Terms of Service', context),
        ],
      ),
    );
  }
}
