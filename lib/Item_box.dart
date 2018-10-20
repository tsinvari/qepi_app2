import 'package:flutter/material.dart';
import 'dart:async';

class ItemBox extends StatelessWidget{

  
  @override

  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
        //backgroundColor: const Color(0xFFf0a043),
        backgroundColor: Colors.white,
        title: new Text("Q'epi", style: TextStyle(fontWeight: FontWeight.bold, color: const Color(0xFFF09731)),),
        iconTheme: new IconThemeData(color: const Color(0xFFF09731)),
        ),
      body: new Column(
        children: <Widget>[
          new Container(
            height: 80.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(15, (index) {
                return new Card(
                  child: new Icon(Icons.school, size: 70.0,),
                );
              }),
            ),
          ),

          new Card(
            child: new Text("Slider"),
          ),

          new Card(
            child: new Text("Quantity"),
          ),

          new Card(
            child: new Text("Cost"),
          ),

          new Card(
            child: new Text("Description"),
          ),

          new Card(
            child: new RaisedButton(onPressed: null,child: new Text("save"),),
          ),


        ],
      )

    )
  ;}
}
