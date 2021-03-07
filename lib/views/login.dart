import 'package:flutter/material.dart';
import 'package:project_manager/helper/loginForm.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: Container(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                'assets/background.png',
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Spacer(flex: 1),
          Container(
            height: 100,
            width: 350,
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                'Prject Manager',
                style: TextStyle(shadows: [
                  BoxShadow(
                      color: Theme.of(context).accentColor,
                      offset: Offset(2.0, 1))
                ]),
              ),
            ),
          ),
          Spacer(flex: 1),
          Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 20),
                height: 100,
                width: 100,
                child: FittedBox(
                  fit: BoxFit.fitWidth,
                  child: Text('Sign In'),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: LoginForm(),
          ),
          Spacer(flex: 150)
        ],
      ),
    );
  }
}
