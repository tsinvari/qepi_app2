import 'package:flutter/material.dart';

class Parcels extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,

          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new Center(
              child: new Container(
                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                child: new Material(
                  child: new InkWell(
                    onTap: () => print('create'),
                    child: new Container(
                      //width: 100.0,
                      height: 80.0,
                      decoration: new BoxDecoration(
                        //color: const Color(0xFFffd85f),
                        gradient: new LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          //stops: [0.1, 0.5, 0.7, 0.9],
                          colors: [
                            const Color(0xFFffd85f),
                            const Color(0xFFF09731),
                          ],
                        ),
                        border: new Border.all(color: Colors.white, width: 2.0),
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                      child: new Center(
                        child: new Text('CREATE PARCEL',
                          style: new TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),),
                      ),
                    ),
                  ),
                  color: Colors.transparent,
                ),
              ),
            ),

              new Container(
               /* height: 50.0,
                width: 400.0,*/
               padding: const EdgeInsets.symmetric(horizontal: 15.0),
               child: new Row(
                 //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: <Widget>[
                   new Flexible(
                     child:
                     new TextField(
                       decoration: new InputDecoration(
                           hintText: "Search"
                       ),
                     ),
                   ),
                   new Icon(Icons.search),
                 ],
               )
                ),


            new Expanded(
              flex: 20,
              child: new Container(
                padding: const EdgeInsets.symmetric(horizontal: 2.0),
                color: const Color(0xFFfcf9f4),
                child : new ListView.builder(
                  itemExtent: 100.0,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index){
                    return new Card(
                      child: new ListTile(
                        onTap: null,
                        title: new Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                new Text("Origen ",style: new TextStyle(color: const Color(0xFF5A5958),),),
                                new Text("______" ,style: new TextStyle(color: const Color(0xFF5A5958),),),
                                new Icon(Icons.flight),
                                new Text("______",style: new TextStyle(color: const Color(0xFF5A5958),),),
                                new Text(" Destino",style: new TextStyle(color: const Color(0xFF5A5958),),),
                              ],
                            ),
                            new Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                new Icon(Icons.calendar_view_day, color: const Color(0xFF5a5859),),
                                new Text("5 Kg",style: new TextStyle(color: const Color(0xFF5A5958), fontFamily: "Gibson-Regular"),),
                                new Icon(Icons.inbox, color: const Color(0xFF5a5859),),
                                new Text("7",style: new TextStyle(color: const Color(0xFF5A5958),),),
                                new Icon(Icons.calendar_today, color: const Color(0xFF5a5859),),
                                new Text("3/Nov/18",style: new TextStyle(color: const Color(0xFF5A5958),),),
                              ],
                            ),
                          ],
                        ),
                        trailing: new Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            new Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                new Icon(Icons.markunread_mailbox, color: const Color(0xFF5a5859), size: 20.0,),
                                new Text("Draft"),
                              ],
                            ),
                            new Icon(Icons.arrow_right),
                          ],
                        )
                      ),
                  );
                },
              ),),)
          ],
        ),
      ),
    );
  }
}
