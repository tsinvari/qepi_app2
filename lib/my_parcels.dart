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
            /*new RaisedButton(
                onPressed: null,
                color: Colors.red,
                disabledColor: const Color(0xFFffd85f),
                highlightColor: Colors.black,
                shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(5.0)),
                disabledTextColor: Colors.white,
                textColor: Colors.white,
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new Icon(Icons.inbox, size: 35.0,),
                    new Text("Create Parcel",
                      style: new TextStyle(fontSize: 25.0, color: Colors.white),)
                  ],
                ),
              ),*/
            new Center(
              child: new Container(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
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
                            const Color(0xFFf0a043),
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
                //color: const Color(0xFFffd85f),
              ),
            ),

              new Container(
               /* height: 50.0,
                width: 400.0,*/
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
               child: new Row(
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
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                color: const Color(0xFFfcf9f4),
                child : new ListView.builder(
                  itemExtent: 100.0,
                  itemCount: 10,
                  itemBuilder: (BuildContext context, int index){
                    return new Card(
                      child: new RaisedButton(
                          onPressed: null,
                        disabledColor: Colors.white,
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            new ListTile(
                              leading: new Column(

                                mainAxisAlignment: MainAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  new Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      new Text("Origen "),
                                      new Text("______"),
                                      new Icon(Icons.flight),
                                      new Text("______"),
                                      new Text(" Destino"),
                                    ],
                                  ),
                                  new Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    //crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      new Icon(Icons.calendar_view_day, color: const Color(0xFF5a5859),),
                                      new Text(" 5 Kg  "),
                                      new Icon(Icons.inbox, color: const Color(0xFF5a5859),),
                                      new Text(" 7  "),
                                      new Icon(Icons.calendar_today, color: const Color(0xFF5a5859),),
                                      new Text(" 3/Nov/18 "),
                                    ],
                                  ),
                                ],
                              ),
                              trailing: new Icon(Icons.markunread_mailbox, color: const Color(0xFF5a5859), size: 20.0,),
                            ),
                          ],
                        ),
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
