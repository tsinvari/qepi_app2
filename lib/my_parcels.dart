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
            new RaisedButton(
                onPressed: null,
                color: Colors.red,
                child: new Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new Icon(Icons.inbox, size: 35.0,),
                    new Text("Create Parcel", style: new TextStyle(fontSize: 35.0),),
                  ],
                ),
              ),
            new TextField(
                      decoration: new InputDecoration(
                          hintText: "Search"
                      ),
                    ),
            new Expanded(
              flex: 20,
              child: new ListView.builder(
                itemCount: 19,
                itemBuilder: (BuildContext context, int index){
                  return new Card(
                      child: new RaisedButton(
                          onPressed: null,
                        child: new Column(
                          children: <Widget>[
                            new ListTile(
                              leading: new Column(
                                children: <Widget>[
                                  new Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      new Text("Origen"),
                                      new Text("____________"),
                                      new Text("Destino"),
                                    ],
                                  ),
                                  new Row(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
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
                              ),
                              trailing: new Icon(Icons.markunread_mailbox, color: Colors.brown, size: 15.0,),
                            ),
                          ],
                        ),
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
