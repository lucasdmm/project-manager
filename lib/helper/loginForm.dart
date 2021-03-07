import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:project_manager/views/home.dart';

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool obscure = true;
  TextEditingController ctlUser = TextEditingController(text: '');
  TextEditingController ctlPass = TextEditingController(text: '');
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Column(
            children: [
              TextFormField(
                  controller: ctlUser,
                  decoration: InputDecoration(
                      labelStyle: TextStyle(
                          color: Theme.of(context).accentColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                      labelText: 'Username or email')),
              TextFormField(
                  controller: ctlPass,
                  obscureText: obscure,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(
                          color: Theme.of(context).primaryColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                      suffix: IconButton(
                        icon: Icon(
                            !obscure
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            color: Theme.of(context).accentColor),
                        onPressed: () => setState(() => obscure = !obscure),
                      ))),
              Padding(
                padding: const EdgeInsets.all(30.0),
                child: ElevatedButton(
                    onPressed: () {
                      if (ctlPass.text.isNotEmpty && ctlUser.text.isNotEmpty) {
                        setState(() => Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (_) => Home())));
                      } else {
                        setState(() => ctlPass.clear());
                        setState(() => ctlUser.clear());
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            backgroundColor: Colors.redAccent,
                            content: Text(
                              'Those fields are necessery!',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            )));
                      }
                    },
                    child: Text(
                      'ENTER',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget enterData({
    required String labelText,
    onChanged,
    shouldObscure,
    String? errorText,
    bool isPassword = false,
    bool obscureText = false,
  }) {
    return TextField(
      obscureText: obscureText,
      onChanged: onChanged,
      decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(
              color: Theme.of(context).primaryColor,
              fontSize: 16,
              fontWeight: FontWeight.bold),
          suffix: !isPassword
              ? null
              : IconButton(
                  icon: !obscureText
                      ? FittedBox(
                          fit: BoxFit.fitHeight,
                          child: Icon(
                            Icons.visibility_outlined,
                            color: Theme.of(context).accentColor,
                          ))
                      : FittedBox(
                          fit: BoxFit.fitHeight,
                          child: Icon(
                            Icons.visibility_off_outlined,
                            color: Theme.of(context).accentColor,
                          )),
                  onPressed: shouldObscure,
                ),
          errorText: errorText),
    );
  }
}
