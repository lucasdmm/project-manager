import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project_manager/views/login.dart';

class Splash extends StatefulWidget {
  Splash({required this.title});
  final String title;
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Timer(
        Duration(milliseconds: 950),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Login())));
    super.initState();
  }

  Tween<double> _scaleTween = Tween<double>(begin: 0, end: 3.3);
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).primaryColor,
      alignment: Alignment.center,
      padding: EdgeInsets.all(30),
      child: Column(
        children: [
          Spacer(flex: 1),
          Container(
            height: 150,
            width: 300,
            child: FittedBox(
              fit: BoxFit.fitWidth,
              child: Text(
                '${widget.title}',
                style: TextStyle(
                    decoration: TextDecoration.none, color: Colors.black54),
              ),
            ),
          ),
          Spacer(flex: 1),
          TweenAnimationBuilder(
            tween: _scaleTween,
            duration: Duration(
              milliseconds: 900,
            ),
            builder: (context, double scale, child) =>
                Transform.scale(scale: scale, child: child),
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(offset: Offset(3.0, 5.0), color: Colors.black54)
                ],
                border: Border.all(width: 10, color: Colors.red),
                borderRadius: BorderRadius.circular(500),
              ),
              child: ClipOval(
                  child: Image.asset(
                'assets/splash.jpg',
                fit: BoxFit.contain,
              )),
            ),
          ),
          Spacer(flex: 3),
          Text('Created by Lucas Melo - Frontend & Mobile Developer',
              style: TextStyle(
                decoration: TextDecoration.none,
                color: Colors.black54,
                fontSize: 12,
              )),
          Spacer(
            flex: 1,
          )
        ],
      ),
    );
  }
}
