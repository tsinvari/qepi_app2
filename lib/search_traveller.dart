import 'package:flutter/material.dart';
import 'dart:async';

class Search extends StatelessWidget {

  DateTime _date = new DateTime.now();
  TimeOfDay _time = new TimeOfDay.now();

  Future <Null> _selectDate (BuildContext context) async {
    final DateTime picked = await showDatePicker(context: context,
        initialDate: _date,
        firstDate: new DateTime(2017),
        lastDate: new DateTime(2019));

  }
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.max,
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
                child: new ExpansionTile(
                  initiallyExpanded: false,
                  title: new Column(
                    children: <Widget>[
                      new Text ("Origen"),
                      new Text ("Destino"),
                    ],
                  )
                  children: <Widget>[
                    new TextFormField(
                      decoration: new InputDecoration(
                        hintText: "Origen",
                        hintStyle: new TextStyle(color: const Color(0xFFB9B9B9),fontFamily: "Gibson"),
                        border: InputBorder.none,
                      ),
                    ),
                    new TextFormField(
                      decoration: new InputDecoration(
                        hintText: "Destino",
                        hintStyle: new TextStyle(color: const Color(0xFFB9B9B9),fontFamily: "Gibson"),
                        border: InputBorder.none,
                      ),
                    ),
                    new Row(
                      children: <Widget>[
                        new Text("Fecha"),
                        new IconButton(icon: new Icon(Icons.calendar_view_day,), onPressed: (){_selectDate(context);}),
                      ],
                    ),
                    new Row(
                      children: <Widget>[
                        new Text("Peso"),
                        new Slider(value: 5.0, min: 0.0, max: 10.0, divisions: 10, onChanged: null)
                      ],
                    ),


                  ],

                )
                /*new Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new Flexible(
                      child: new Container(
                        width: 160.0,
                        height: 160.0,
                        padding: const EdgeInsets.all(3.0),
                        child:
                        new Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new TextFormField(
                              decoration: new InputDecoration(
                                labelText: "Origen",
                                labelStyle: new TextStyle(fontSize: 10.0),
                                border: InputBorder.none,
                              ),
                              style: new TextStyle(fontSize: 13.0),
                            ),
                            new TextFormField(
                              decoration: new InputDecoration(
                                labelText: "Destino",
                                labelStyle: new TextStyle(fontSize: 10.0),
                                border: InputBorder.none,
                              ),
                            ),
                            new Icon(Icons.arrow_drop_down),
                          ],
                        ),
                      )

                    ),
                    new Icon(Icons.swap_vert,)
                  ],
                ),*/
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
