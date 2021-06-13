import 'package:flutter/material.dart';

import '../constants/colors/custom_colors.dart';

class LoginWithWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          FittedBox(
            child: Text(
              'or log on with',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: 'Helvetica',
                  color: CustomColors.bold_text_color),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              IconButton(
                onPressed: () => {},
                icon: Image.asset('assets/icons/twitter.png'),
              ),
              IconButton(
                onPressed: () => {},
                icon: Image.asset('assets/icons/facebook.png'),
              ),
              IconButton(
                onPressed: () => {},
                icon: Image.asset('assets/icons/instagram.png'),
              )
            ],
          ),
        ],
      ),
    );
  }
}
