import 'package:flutter/material.dart';
import './home_screen.dart';
import './splash_screen.dart';

var routes = <String, WidgetBuilder>{
  "/home": (BuildContext context) => Home(),
  //"/intro": (BuildContext context) => IntroScreen(),
};

void main(){ 
  runApp(new MaterialApp(
    theme: ThemeData(fontFamily: 'Gibson',
      primaryColor: const Color(0xFFF09731),
      primarySwatch: Colors.orange,
      //brightness: Brightness.light,
      textSelectionHandleColor: const Color(0xFFF09731),
      //sliderTheme:
    ),
    title: "Q'epi",
    home: SplashScreen(),
    routes: routes
    )
  );
}

