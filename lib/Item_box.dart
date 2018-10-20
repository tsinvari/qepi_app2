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
      body: new Container(
    child: new ListView(
    children: <Widget>[
      new Card(
      child: new Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Container(
            padding: EdgeInsets.only(bottom: 15.0, top: 15.0, left: 15.0),
            child: new Text ("Item", style: TextStyle(fontWeight: FontWeight.bold, color: const Color(0xFFF09731), fontSize: 18.0),),
          ),
          new Container(
            color: const Color(0xFFfcf9f4),
            height: 80.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(15, (index) {
                return new Card(
                  child: new Stack(alignment: const Alignment(0.0, 0.0),
                    children: <Widget>[
                      new Container(
                        height: 60.0,
                        width: 75.0,
                        child: new Icon(const IconData(0xe80b, fontFamily: "QepiIcons"), size: 44.0, color: const Color(0xFFF6CA97),),
                      ),
                      new Text("Item", style: new TextStyle(color: const Color(0xFF5A5859), fontSize: 13.0, fontWeight: FontWeight.bold)),
                    ],
                  )
                );
              }),
            ),
          ),
        ],
      ),
    ),
          new Card(
            child: new Container(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text("Weigth", style: new TextStyle(fontSize: 14.0, fontFamily: "Gibson", color: const Color(0xFFB9B9B9), fontWeight: FontWeight.normal,),),
                  new Slider(value: 5.0, min: 0.0, max: 10.0, divisions: 10, onChanged: null, activeColor: Colors.white, inactiveColor: Colors.white,),
                ],
              ),
            ),
          ),

          new Card(
            child: new Container(
              padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text("Quantity", style: new TextStyle(fontSize: 14.0, fontFamily: "Gibson", color: const Color(0xFFB9B9B9), fontWeight: FontWeight.normal,),),
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
              padding: EdgeInsets.only(top: 10.0, right: 15.0, left: 15.0, bottom: 20.0),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text("Cost", style: new TextStyle(fontSize: 14.0, fontFamily: "Gibson", color: const Color(0xFFB9B9B9), fontWeight: FontWeight.normal,),),
                  new Center(
                    child: new Text('100.00 €', style: new TextStyle(fontSize: 16.0, fontFamily: "Gibson", color: const Color(0xFF5A5859), fontWeight: FontWeight.bold,),)
                  )
                ],
              ),
            ),
          ),

      new Card(
        child: new Container(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              new Text ("Description", style: new TextStyle(fontSize: 14.0, fontFamily: "Gibson", color: const Color(0xFFB9B9B9), fontWeight: FontWeight.normal,),),
              new Container(
                padding: const EdgeInsets.symmetric(horizontal: 0.0),
                child: new Flex(
                  direction: Axis.vertical,
                  children: <Widget>[
                    new TextFormField(
                      keyboardType: TextInputType.multiline,
                      maxLength: 500,
                      maxLines: 5,
                      decoration: new InputDecoration(
                        contentPadding: new EdgeInsets.fromLTRB(
                            10.0, 15.0, 10.0, 10.0),
                        border: new OutlineInputBorder(
                          borderRadius: new BorderRadius.circular(5.0),
                          borderSide: BorderSide(color: const Color(0xFFB9B9B9)),
                        ),
                        focusedBorder: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(5.0),
                            borderSide: BorderSide(color: const Color(0xFFF09731))
                        ),
                        hintText: "Some things that my friend loves from Bolivia...",
                        hintStyle: new TextStyle(color: const Color(0xFFB9B9B9),fontFamily: "Gibson"),
                      ),
                      style: new TextStyle(fontFamily: "Gibson", fontSize: 15.0, color: const Color(0xFF5A5859), fontWeight: FontWeight.normal,),
                    ),
                  ],
                ),
              ),
            ],
          ),),
      ),

      new Container(
        padding: const EdgeInsets.only(bottom: 10.0, top: 20.0),
        child:
        new Center(
          child: new Container(
            padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 3.0),
            child: new Material(
              child: new InkWell(
                onTap: (){
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => CreateParcel()));
                },
                child: new Container(
                  width: 350.0,
                  height: 40.0,
                  decoration: new BoxDecoration(
                    //color: const Color(0xFFffd85f),
                    gradient: new LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        const Color(0xFFffd85f),
                        const Color(0xFFffd85f),
                      ],
                    ),
                    border: new Border.all(color: const Color(0xFFffd85f), width: 2.0),
                    borderRadius: new BorderRadius.circular(10.0),
                  ),
                  child: new Center(
                    child: new Text('SAVE',
                      style: new TextStyle(
                          fontSize: 15.0,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Gibson",
                          color: Colors.white),),
                  ),
                ),
              ),
              color: Colors.transparent,
            ),
            //color: const Color(0xFFF09731),
          ),
        ),
      ),


        ],
      ),
      )

    )
  ;}
}
