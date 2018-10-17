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
            new Container(
              //width: 260.0,
              //height: 160.0,
        padding: const EdgeInsets.symmetric(horizontal: 3.0),
              decoration: new BoxDecoration(
                //color: const Color(0xFFffd85f),
                gradient: new LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  //stops: [0.1, 0.5, 0.7, 0.9],
                  colors: [
                    const Color(0xFFffd85f),
                    const Color(0xFFf0a043),
                  ],
                ),
                border: new Border.all(color: Colors.white, width: 2.0),
                borderRadius: new BorderRadius.circular(10.0),
              ),
                child: new Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new Flexible(
                      child: new Container(
                        width: 160.0,
                        height: 120.0,
                        padding: const EdgeInsets.all(3.0),
                        child:
                        new Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            new TextField(
                              decoration: new InputDecoration(
                                  hintText: "Origen"
                              ),
                            ),
                            new TextField(
                              decoration: new InputDecoration(
                                  hintText: "Destino"
                              ),
                            ),
                            new Icon(Icons.arrow_drop_down),
                          ],
                        ),
                      )

                    ),
                    new Icon(Icons.swap_vert,)
                  ],
                ),
            ),

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
