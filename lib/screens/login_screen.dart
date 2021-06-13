import 'package:flutter/material.dart';

import '../controllers/routing_controller.dart';
import '../widgets/login_with_widget.dart';
import '../constants/colors/custom_colors.dart';

class LoginScreen extends StatefulWidget {
  bool _isObscurePassword = true;

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  void _obscurePassword() {
    setState(
      () {
        widget._isObscurePassword = !widget._isObscurePassword;
      },
    );
  }

  Padding _geInoutBox(final String labelText, final bool obscureTextBool) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: TextFormField(
        obscureText: obscureTextBool,
        decoration: InputDecoration(
          border: UnderlineInputBorder(),
          labelText: labelText,
          suffixIcon: IconButton(
              icon: Icon(
                  obscureTextBool ? Icons.visibility : Icons.visibility_off),
              onPressed: _obscurePassword),
        ),
      ),
    );
  }

  SizedBox _getSizedBoxedButton(
      final String buttonText, final BuildContext context) {
    final double _width = MediaQuery.of(context).size.width - 10;
    return SizedBox(
      width: _width,
      height: 56,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: CustomColors.button_color_dark,
        ),
        onPressed: () {},
        child: Text(
          buttonText,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            fontFamily: 'Helvetica',
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 60,
            ),
            Container(
              height: 62,
              width: 102,
              child: FittedBox(
                child: Text(
                  'Login',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Bangla MN',
                      fontWeight: FontWeight.bold,
                      color: CustomColors.bold_text_color),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            TextFormField(
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: "Email",
              ),
            ),
            TextFormField(
              obscureText: widget._isObscurePassword,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: "Password",
                suffixIcon: IconButton(
                  icon: Icon(widget._isObscurePassword
                      ? Icons.visibility
                      : Icons.visibility_off),
                  onPressed: _obscurePassword,
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            _getSizedBoxedButton("Login", context),
            SizedBox(
              height: 13,
            ),
            Container(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed(RoutingController.getSharedRouting.signUp);
                },
                child: Text(
                  'Signup',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    fontFamily: 'Helvetica',
                    color: CustomColors.bold_text_color,
                  ),
                ),
              ),
            ),
            LoginWithWidget(),
          ],
        ),
      ),
    );
  }
}
