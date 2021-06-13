import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../constants/widget_constants.dart';
import '../constants/colors/custom_colors.dart';

class ValuePropositionWidget extends StatelessWidget {
  final controller = PageController(viewportFraction: 0.8);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Directionality(
          textDirection: TextDirection.rtl,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 16),
              SizedBox(
                height: 300,
                child: PageView(
                  controller: controller,
                  children: List.generate(
                    WidgetConstants.valuePropositionWidgetCount,
                    (_) => Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                      margin: EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 4,
                      ),
                      child: Container(
                        height: 335,
                        decoration: BoxDecoration(
                          color: CustomColors.button_color,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 16),
              Container(
                child: SmoothPageIndicator(
                  controller: controller,
                  count: WidgetConstants.valuePropositionWidgetCount,
                  effect: ExpandingDotsEffect(
                      expansionFactor: 4,
                      dotColor: CustomColors.bold_text_color,
                      activeDotColor: CustomColors.button_color),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
