import 'package:flutter/material.dart';
import './my_parcels.dart';

class VerticalDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 50.0,
      width: 0.6,
      color: const Color(0xFFF09731),
      margin: const EdgeInsets.only(left: 10.0, right: 10.0),
    );
  }
}

class petitVerticalDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 20.0,
      width: 0.6,
      color: const Color(0xFFF09731),
      margin: const EdgeInsets.only(left: 10.0, right: 10.0),
    );
  }
}

class Trips extends StatelessWidget {
  var viajes = [['La Paz', 'Strasbourg', '7','5', '2/Feb/2018'],
                ['Cocha', 'Paris', '17','15', '2/Feb/2017'],
                ['Berlin', 'Bogota','3','5','23/Mar/2019']];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new Center(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            //search
            new Container(
              /* height: 50.0,
                width: 400.0,*/
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: new Row(
                  //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new Flexible(
                      child:
                      new TextFormField(
                        decoration: new InputDecoration(
                          hintText: "Search",
                          hintStyle: new TextStyle(color: const Color(0xFFB9B9B9),fontFamily: "Gibson"),
                          border: InputBorder.none,
                          //labelText: "Search",
                          //labelStyle: new TextStyle(color: const Color(0xFFB9B9B9),fontFamily: "Gibson"),
                        ),
                        style: new TextStyle(fontFamily: "Gibson", color: const Color(0xFF5A5958),),
                      ),
                    ),
                    new Icon(Icons.search, color: const Color(0xFFB9B9B9)),
                  ],
                )
            ),
            new Expanded(
              flex: 20,
              child: new Container(
                padding: const EdgeInsets.symmetric(horizontal: 3.0),
                color: const Color(0xFFfcf9f4),
                child : new ListView.builder(
                  itemExtent: 110.0,
                  itemCount: viajes.length,
                  itemBuilder: (BuildContext context, int index){
                    return new Card(
                      child: new ListTile(
                          onTap: null,
                          subtitle: new Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              new Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  new Text(viajes[index][0]+" ",style: new TextStyle(color: const Color(0xFF5A5958), fontFamily: "Gibson",fontSize: 15.0,fontWeight: FontWeight.bold,),),
                                  new Text("____" ,style: new TextStyle(color: const Color(0xFF5A5958),),),
                                  new Icon(const IconData(0xe80a, fontFamily: "QepiIcons"),),
                                  new Text("____",style: new TextStyle(color: const Color(0xFF5A5958),),),
                                  new Text(" "+viajes[index][1],style: new TextStyle(color: const Color(0xFF5A5958), fontFamily: "Gibson",fontSize: 15.0,fontWeight: FontWeight.bold,),),
                                ],
                              ),
                              new Container(
                                padding: const EdgeInsets.only(bottom: 7.0),
                                child:
                                new Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    new Icon(const IconData(0xe800, fontFamily: "QepiIcons"), color: const Color(0xFF5a5859),),
                                    new Text(viajes[index][2]+"Kg     ",style: new TextStyle(color: const Color(0xFF5A5958), fontFamily: "Gibson",fontSize: 12.0,),),
                                    new petitVerticalDivider(),
                                    new Icon(const IconData(0xe803, fontFamily: "QepiIcons"), color: const Color(0xFF5a5859),),
                                    new Text(viajes[index][4]+"     ",style: new TextStyle(color: const Color(0xFF5A5958), fontFamily: "Gibson",fontSize: 12.0,),),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          trailing: new Row(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              new VerticalDivider(),
                              new Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  new Icon(const IconData(0xe808, fontFamily: "QepiIcons"), color: const Color(0xFF5A5958), size: 30.0,),
                                  new Text("Empty Bag",style: new TextStyle(color: const Color(0xFF5A5958), fontFamily: "Gibson",fontSize: 13.0,),),
                                ],
                              ),
                              new Icon(Icons.arrow_right, color: const Color(0xFFF09731),),
                            ],
                          )
                      ),
                    );
                  },
                ),),),
          ],
        ),
      ),
    );
  }
}
