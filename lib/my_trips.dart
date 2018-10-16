import 'package:flutter/material.dart';

class Trips extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            new Padding(padding: new EdgeInsets.all(20.0),),
            new Text("My Trips", style: new TextStyle(fontSize: 30.0),),
          ],
        ),
      ),
    );
  }
}
