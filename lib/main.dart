import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/auth_provider.dart';
import './constants/colors/custom_colors.dart';
import './screens/home_screen.dart';
import './controllers/routing_controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: AuthProvider(),
        )
      ],
      child: MaterialApp(
        title: 'Green Smoothie',
        theme: ThemeData(
          backgroundColor: Colors.white,
          buttonColor: Color.fromRGBO(24,95,86, 0),
          fontFamily: 'Helvetica',
          textTheme: TextTheme(
            headline1: TextStyle(color: CustomColors.bold_text_color),
          ),
        ),
        home: HomeScreen(),
        initialRoute: RoutingController.getSharedRouting.homeViewRoute,
        onGenerateRoute: RoutingController.getSharedRouting.generateRoute,
      ),
    );
  }
}
