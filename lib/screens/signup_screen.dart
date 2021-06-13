import 'package:flutter/material.dart';

import '../widgets/login_with_widget.dart';
import '../controllers/routing_controller.dart';
import '../constants/colors/custom_colors.dart';

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
              height: 50,
            ),
            Container(
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
            TextFormField(
              decoration: InputDecoration(
                border: UnderlineInputBorder(),
                labelText: 'Name',
              ),
            ),
            TextFormField(
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
            _getSizedBoxedButton("Signup", context),
            Container(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {Navigator.of(context)
                    .pushNamed(RoutingController.getSharedRouting.logon);},
                child: Text(
                  'Log In',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    fontFamily: 'Helvetica',
                    color: CustomColors.bold_text_color,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
