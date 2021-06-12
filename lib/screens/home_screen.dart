import 'package:flutter/material.dart';

import '../colors/custom_colors.dart';
import '../constants/widget_constants.dart';
import '../widgets/value_proposition.dart';
import '../widgets/signup_widget.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double _width = MediaQuery.of(context).size.width - 10;
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              color: Theme.of(context).backgroundColor,
              height: 150,
              width: double.infinity,
            ),
            FittedBox(
              child: Text(
                'Welcome to',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Helvetica',
                    color: CustomColors.bold_text_color),
              ),
            ),
            SizedBox(height: 16),
            FittedBox(
              child: Text(
                'The Points App',
                textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 24,
                    fontFamily: 'Helvetica',
                    fontWeight: FontWeight.bold,
                    color: CustomColors.bold_text_color),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            ValuePropositionWidget(),
            SizedBox(
              height: 20,
            ),
            Container(
              width: _width,
              height: 60,
              child: SizedBox(
                child: Text(
                  WidgetConstants.valuePropositionStaticText,
                  textAlign: TextAlign.center,
                  maxLines: 3,
                  style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Helvetica',
                      fontWeight: FontWeight.normal,
                      color: CustomColors.value_prop_color),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SignupWidget()
          ],
        ),
      ),
    );
  }
}