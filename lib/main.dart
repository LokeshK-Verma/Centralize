import 'package:Centralize/service/auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:Centralize/utils/const.dart';
import 'package:Centralize/screens/splashscreen.dart';
import 'package:Centralize/constants/constants.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ));

    return Provider<AuthBase>(
      create: (context) => Auth(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: Constants.appName,
          theme: Constants.lightTheme,
          darkTheme: Constants.darkTheme,
         
          initialRoute: SPLASH_SCREEN,
          home: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: SplashScreen(),
          )),
    );
  }
}
