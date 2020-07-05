import 'dart:async';

import 'package:Centralize/screens/MainScreen.dart';
import 'package:Centralize/screens/authentication/signin.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:Centralize/constants/constants.dart';

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => new SplashScreenState();
}

class SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  var _visible = true;
   bool isAuth = true;

  AnimationController animationController;
  Animation<double> animation;

  startTime() async {
    var _duration = new Duration(seconds: 3);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
   //isAuth ? Navigator.of(context).pushReplacementNamed(MAIN_SCREEN): Navigator.of(context).pushReplacementNamed(SIGN_IN);
   isAuth ? Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => MainScreen())): Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SignInPage()),);
    
    //Navigator.of(context).pushReplacementNamed(SIGN_IN);
    //Navigator.of(context).pushReplacementNamed(MAIN_SCREEN);
  }

  @override
  void initState() {
    super.initState();
    animationController = new AnimationController(
        vsync: this, duration: new Duration(seconds: 2));
    animation =
        new CurvedAnimation(parent: animationController, curve: Curves.easeOut);

    animation.addListener(() => this.setState(() {}));
    animationController.forward();

    setState(() {
      _visible = !_visible;
      isAuth=true;
    });
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Column(
            mainAxisAlignment: MainAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 30.0),
                child: Text(
                  "Centralize",
                  style: TextStyle(
                      fontFamily: 'MuseoModerno',
                      fontSize: 18.0,
                      color: Colors.deepPurple),
                ),
              )
            ],
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Image.asset(
                'assets/images/auth/logo.png',
                width: animation.value * 50,
                height: animation.value * 50,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
