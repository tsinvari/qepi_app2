import 'dart:async';

import 'package:flutter/material.dart';
import './home_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 5), () => Navigator.pushNamed(context, "/home"));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: const Color(0xFFFFFFFF)),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundColor: const Color(0xFFFFDA60),
                        radius: 50.0,
                        child: /*Icon(
                          Icons.shopping_cart,
                          color: Colors.greenAccent,
                          size: 50.0,
                        ),*/
                        Image(image: AssetImage('lib/images/qEPIbAGNsin.png'),)
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 10.0),
                      ),
                      Text(
                        "Q'epi",
                        style: TextStyle(
                            color: const Color(0xFFF09731),
                            fontFamily: "Gibson",
                            fontWeight: FontWeight.bold,
                            fontSize: 24.0),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(
                      valueColor: new AlwaysStoppedAnimation<Color>(const Color(0xFFFFDA60)),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 20.0),
                    ),
                    Text(
                      "Loading...",
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: "Gibson",
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: const Color(0xFF5A5958)),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}