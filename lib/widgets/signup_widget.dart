import 'package:flutter/material.dart';

import '../controllers/routing_controller.dart';
import '../colors/custom_colors.dart';

class SignupWidget extends StatelessWidget {

  SizedBox _getSizedBoxedButton(
      final String buttonText, final BuildContext context) {
    final double _width = MediaQuery.of(context).size.width - 10;

    return SizedBox(
      width: _width,
      height: 60,
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
          Container(
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Terms of Service',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 17,
                  fontFamily: 'Helvetica',
                  color: CustomColors.bold_text_color,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
