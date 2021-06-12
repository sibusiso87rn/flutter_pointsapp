import 'package:flutter/material.dart';

import '../controllers/routing_controller.dart';
import '../colors/custom_colors.dart';

class SignupScreen extends StatefulWidget {
  bool _isObscurePassword = true;
  bool _isObscureEmail = false;

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  void _obscurePassword() {
    setState(
      () {
        widget._isObscurePassword = !widget._isObscurePassword;
      },
    );
  }

  void _obscureEmail() {
    setState(
      () {
        widget._isObscureEmail = !widget._isObscureEmail;
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
            icon:
                Icon(obscureTextBool ? Icons.visibility : Icons.visibility_off),
            onPressed: labelText.compareTo("Password") == 0
                ? _obscurePassword
                : _obscureEmail,
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
    return Scaffold(
      appBar: AppBar(
        actions: [],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Container(
              height: 62,
              width: 102,
              child: FittedBox(
                child: Text(
                  'Sign Up',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      fontSize: 30,
                      fontFamily: 'Bangla MN',
                      fontWeight: FontWeight.bold,
                      color: CustomColors.bold_text_color),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: TextFormField(
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Name',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: TextFormField(
              obscureText: widget._isObscureEmail,
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: "Email",
                suffixIcon: IconButton(
                  icon: Icon(widget._isObscureEmail
                      ? Icons.visibility
                      : Icons.visibility_off),
                  onPressed: _obscurePassword,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: TextFormField(
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
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
