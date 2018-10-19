import 'package:flutter/material.dart';
import 'dart:async';

class VerticalDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 50.0,
      width: 0.6,
      color: const Color(0xFFF09731),
      margin: const EdgeInsets.only(left: 10.0, right: 25.0),
    );
  }
}

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
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              decoration: new BoxDecoration(
                color: const Color(0xFFF09731),
               /* gradient: new LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  //stops: [0.1, 0.5, 0.7, 0.9],
                  colors: [
                    const Color(0xFFffd85f),
                    const Color(0xFFf0a043),
                  ],
                ),*/
                border: new Border.all(color: Colors.white, width: 2.0),
                borderRadius: new BorderRadius.circular(10.0),
              ),
                child: new ExpansionTile(
                  initiallyExpanded: false,
                  title: new Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text ("From", style: new TextStyle(color: const Color(0xFFFAF4EA), fontSize: 15.0,fontFamily: "Gibson",),),
                      new Text ("To", style: new TextStyle(color: const Color(0xFFFAF4EA), fontSize: 15.0,fontFamily: "Gibson",fontStyle: FontStyle.normal,),),
                    ],
                  ),
                  children: <Widget>[
                    new TextFormField(
                      decoration: new InputDecoration(
                        hintText: "From",
                        hintStyle: new TextStyle(color: const Color(0xFFFAF4EA),fontFamily: "Gibson"),
                        border: InputBorder.none,
                      ),
                    ),
                    new TextFormField(
                      decoration: new InputDecoration(
                        hintText: "To",
                        hintStyle: new TextStyle(color: const Color(0xFFFAF4EA),fontFamily: "Gibson"),
                        border: InputBorder.none,
                      ),
                    ),
                    new Row(
                      children: <Widget>[
                        new Text("Month", style: new TextStyle(color: const Color(0xFFFAF4EA), fontSize: 15.0,fontFamily: "Gibson",),),
                        new IconButton(icon: new Icon(Icons.arrow_drop_down, color: const Color(0xFFFAF4EA),), onPressed: (){_selectDate(context);}),
                      ],
                    ),
                    new Row(
                      children: <Widget>[
                        new Text("Weigth", style: new TextStyle(color: const Color(0xFFFAF4EA), fontSize: 15.0,fontFamily: "Gibson",),),
                        new Slider(value: 5.0, min: 0.0, max: 10.0, divisions: 10, onChanged: null, activeColor: const Color(0xFFFAF4EA), inactiveColor: const Color(0xFFFAF4EA),)
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
              child: new Container(
                padding: const EdgeInsets.symmetric(horizontal: 3.0, ),
                color: const Color(0xFFfcf9f4),
                child: new ListView.builder(
                  itemCount: 7,
                  itemBuilder: (BuildContext context, int index){
                    return new Card(
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            new ListTile(
                              leading: new Icon(Icons.person, color: const Color(0xFF5a5859), size: 15.0,),
                              title: new Text("Quentin LEGRAND", style: new TextStyle(fontSize: 14.0,fontFamily: "Gibson",fontStyle: FontStyle.normal,),),
                              subtitle: new Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  new Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: <Widget>[
                                      new Icon(Icons.star, color: const Color(0xFFF1BD79), size: 20.0,),
                                      new Icon(Icons.star, color: const Color(0xFFF1BD79), size: 20.0,),
                                      new Icon(Icons.star, color: const Color(0xFFF1BD79), size: 20.0,),
                                      new Icon(Icons.star_border, color: const Color(0xFFF1BD79), size: 20.0,),
                                      new Icon(Icons.star_border, color: const Color(0xFFF1BD79), size: 20.0,),
                                    ],
                                  ),
                                  new Text("Super experienced mentor  and some useful content posts that have really helped me develop my skills.", style: new TextStyle(fontSize: 12.0,color: const Color(0xFF5A5958),),),
                                  new Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      new Icon(const IconData(0xe800, fontFamily: "QepiIcons"), color: const Color(0xFF5a5859),),
                                      new Text("6 Kg     ", style: new TextStyle(fontSize: 12.0,color: const Color(0xFF5A5958),),),
                                      new Icon(const IconData(0xe806, fontFamily: "QepiIcons"), color: const Color(0xFF5a5859),),
                                      new Text("80 €     ", style: new TextStyle(fontSize: 12.0,color: const Color(0xFF5A5958),),),
                                      new Icon(const IconData(0xe801, fontFamily: "QepiIcons"), color: const Color(0xFF5a5859),),
                                      new Text("January 2019", style: new TextStyle(fontSize: 12.0,color: const Color(0xFF5A5958),),),
                                    ],
                                  ),
                                ],

                              )


                            ),
                          ],
                        )
                    );
                  },
                ),),)
          ],
        ),
      ),
    );
  }
}
