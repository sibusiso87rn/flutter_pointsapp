import 'package:flutter/material.dart';

import '../screens/signup_screen.dart';
import '../screens/home_screen.dart';

class RoutingController{

  final String homeViewRoute  = '/';
  final String signUp         = '/sign-up';
  final String logon          = '/logon';

  static final RoutingController _routingController = RoutingController._internal();
  factory RoutingController() => _routingController;

  RoutingController._internal();

  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/sign-up':
        return MaterialPageRoute(builder: (context) => SignupScreen());
      default:
        return MaterialPageRoute(builder: (context) => HomeScreen());
    }
  }

  static RoutingController get getSharedRouting => _routingController;

}