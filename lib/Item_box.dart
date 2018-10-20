import 'package:flutter/material.dart';
import 'dart:async';

class ItemBox extends StatelessWidget{

  
  @override

  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: const Color(0xFFF09731),
          title: new Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              new Icon(const IconData(0xe805, fontFamily: "QepiIcons"), color: Colors.white, size: 30.0,),
              new Text("  CREATE PARCEL", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18.0),)
            ],
          ),
          iconTheme: new IconThemeData(color: Colors.white),
        ),
        backgroundColor: const Color(0xFFfcf9f4),
      body: new Column(
        children: <Widget>[
          new Container(
            height: 80.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(15, (index) {
                return new Card(
                  child: new Stack(alignment: const Alignment(0.0, 0.0),
                    children: <Widget>[
                      new Icon(Icons.school, size: 70.0, color: Colors.grey,),
                      new Text("Item", style: new TextStyle(color: Colors.red, fontSize: 20.0)),
                    ],
                  )
                );
              }),
            ),
          ),

          new Card(
            child: new Container(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text("Weigth"),
                  new Slider(value: 5.0, min: 0.0, max: 10.0, divisions: 10, onChanged: null, activeColor: Colors.white, inactiveColor: Colors.white,),
                ],
              ),
            ),
          ),

          new Card(
            child: new Container(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text("Quantity"),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      new Text("1"),
                      new Text("2"),
                      new Text("4"),
                    ],
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      new Text("Pieces"),
                      new Text("Pac"),
                      new Text("Pair"),
                    ],
                  ),
                ],
              ),
            ),
          ),

          new Card(
            child: new Container(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text("Cost"),
                  new Center(
                    child: new Text('100 Euros')
                  )
                ],
              ),
            ),
          ),

          new Card(
            child: new Container(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Text("Description"),
                      new Text("140 characters left"),
                    ],
                  ),

                  new Container(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Description",
                        ),
                      ))
                ],
              ),
            ),
          ),

          new Card(
            child: new Container(
              padding: EdgeInsets.symmetric(vertical: 10.0),
              child: new Center(
                child: new RaisedButton(onPressed: null,child: new Text("save"),),
              ),
            ),
          ),


        ],
      )

    )
  ;}
}
