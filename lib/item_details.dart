import 'package:flutter/material.dart';
import './Item_box.dart';
import 'dart:async';

class ItemDetails extends StatelessWidget{

  DateTime _date = new DateTime.now();
  TimeOfDay _time = new TimeOfDay.now();

  Future <Null> _selectDate (BuildContext context) async {
    final DateTime picked = await showDatePicker(context: context,
        initialDate: _date,
        firstDate: new DateTime(2017),
        lastDate: new DateTime(2019));
  }
  List<DropdownMenuItem<String>> listDrop =[];
  void loadData(){
    listDrop.add(new DropdownMenuItem(child: new Text("1"), value: "1"));
    listDrop.add(new DropdownMenuItem(child: new Text("2"), value: "3"));
    listDrop.add(new DropdownMenuItem(child: new Text("3"), value: "4"));

  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          //backgroundColor: const Color(0xFFf0a043),
          backgroundColor: Colors.white,
          title: new Text("Q'epi", style: TextStyle(fontWeight: FontWeight.bold, color: const Color(0xFFF09731)),),
          iconTheme: new IconThemeData(color: const Color(0xFFF09731)),
        ),
        body: new Column(
          children: <Widget>[
            new Card(
              child: new Container(
                child: new Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new Text ("Item details",),
                    new Row(
                      children: <Widget>[
                        new Column(
                          children: <Widget>[
                            new Text("Fecha"),
                            new IconButton(icon: new Icon(Icons.calendar_view_day,), onPressed: null,),
                          ],
                        ),
                        new Column(
                          children: <Widget>[
                            new Text("Fecha"),
                            new IconButton(icon: new Icon(Icons.calendar_view_day,), onPressed: null,),
                          ],
                        ),
                        new Column(
                          children: <Widget>[
                            new Text("Fecha"),
                            new IconButton(icon: new Icon(Icons.calendar_view_day,), onPressed: null,),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            new Expanded(
              child : new GridView.count(
                crossAxisCount: 2,
                primary: false,
                padding: const EdgeInsets.all(10.0),
                crossAxisSpacing: 10.0,
                children: List.generate(18, (index){
                  if (index == 0)
                  {return new Card(
                    child: FlatButton(
                      child: const Text('+'),
                  onPressed: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => ItemBox()));
                  },
                  ),
                  );}
                  else
                    {
                  return new Card(
                    child: new Column(
                      children: <Widget>[
                        new Row(
                          children: <Widget>[
                            new Text("Item"),
                            new Text("Precio"),
                          ],
                        ),
                        new Row(
                          children: <Widget>[
                            new Icon(Icons.school),
                            new Column(
                              children: <Widget>[
                                new Text("Item"),
                                new Text("Precio"),
                              ],
                            ),
                          ],
                        ),
                        new Row(
                          children: <Widget>[
                            new Text("datos del item")
                          ],
                        )
                      ],
                    ),
                  );}
                }),
              ),
            ),
          ],
        ),
    );
  }
}
