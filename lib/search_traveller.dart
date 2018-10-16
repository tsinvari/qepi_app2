import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Text("Search Traveler", style: new TextStyle(fontSize: 30.0),),
            new TextField(
              decoration: new InputDecoration(
                hintText: "Origen",
              ),
            ),
            new TextField(
              decoration: new InputDecoration(
                  hintText: "destino"
              ),
            ),
            new Icon(Icons.arrow_drop_down),
            new Expanded(
                child: new ListView.builder(
                  itemCount: 7,
                  itemBuilder: (BuildContext context, int index){
                    return new Card(
                        child: new Column(
                          children: <Widget>[
                            new ListTile(
                              leading: new Icon(Icons.person, color: Colors.brown, size: 15.0,),
                              title: new Text("Name Last Name", style: new TextStyle(fontSize: 15.0),),
                              subtitle: new Column(
                                children: <Widget>[
                                  new Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      new Icon(Icons.star, color: Colors.yellow,),
                                      new Icon(Icons.star, color: Colors.yellow,),
                                      new Icon(Icons.star, color: Colors.yellow,),
                                      new Icon(Icons.star_border, color: Colors.yellow,),
                                      new Icon(Icons.star_border, color: Colors.yellow,),
                                    ],
                                  ),
                                  new Text("Datos: asaaasdfasfafadsfadfasaaasdfasfafadsfadfasaaasdfasfafadsfadfasaaasdfasfafadsfadf", style: new TextStyle(fontSize: 10.0),),
                                  new Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      new Icon(Icons.calendar_view_day, color: Colors.brown,),
                                      new Text("Peso"),
                                      new Icon(Icons.calendar_view_day, color: Colors.brown,),
                                      new Text("Peso"),
                                      new Icon(Icons.calendar_view_day, color: Colors.brown,),
                                      new Text("Peso"),
                                    ],
                                  ),
                                ],

                              )


                            ),
                          ],
                        )
                    );
                  },
                ),)
          ],
        ),
      ),
    );
  }
}
