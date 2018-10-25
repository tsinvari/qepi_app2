import 'package:flutter/material.dart';
import 'dart:async';

class PetitVerticalDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 20.0,
      width: 0.6,
      color: const Color(0xFFF09731),
      margin: const EdgeInsets.only(left: 25.0, right: 25.0),
    );
  }
}

class HorizontalDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 1.0,
      width: 400.0,
      color: const Color(0xFFE6E6E6),
      margin: const EdgeInsets.only(left: 0.0, top: 15.0, bottom: 15.0),
    );
  }
}

class DetailTraveler extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: const Color(0xFFF09731),
          title: new Row(
            children: <Widget>[
              new Icon(const IconData(0xe805, fontFamily: "QepiIcons"), color: Colors.white, size: 30.0,),
              new Text("  CREATE PARCEL", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18.0),)
            ],
          ),
          iconTheme: new IconThemeData(color: Colors.white),
        ),
        backgroundColor: const Color(0xFFfcf9f4),
      body: new Container(
        child: new ListView(
          children: <Widget>[
            new Card(
              child: new Container(
                child: new Text("La Paz",style: new TextStyle(color: Colors.white, fontFamily: "Gibson",fontSize: 15.0,fontWeight: FontWeight.bold,),),
              ),
            ),
          ],
        ),
      ),
    );
  }
}