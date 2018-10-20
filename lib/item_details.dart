import 'package:flutter/material.dart';
import './Item_box.dart';
import 'dart:async';

class HorizontalDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 1.0,
      width: 130.0,
      color: const Color(0xFFE6E6E6),
      margin: const EdgeInsets.only(left: 0.0, top: 0.1, bottom: 0.1),
    );
  }
}

class petitHorizontalDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 1.0,
      width: 50.0,
      color: const Color(0xFFE6E6E6),
      margin: const EdgeInsets.only(left: 0.0, top: 4.0, bottom: 4.0),
    );
  }
}

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
        body: new Column(
          children: <Widget>[
            new Card(
              child: new Container(
                padding: EdgeInsets.only(left: 25.0, right: 25.0,top: 25.0, bottom: 25.0),
                child: new Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new Container(
                      padding: EdgeInsets.only(bottom: 25.0),
                      child: new Text ("Item details", style: TextStyle(fontWeight: FontWeight.bold, color: const Color(0xFFF09731), fontSize: 18.0),),
                    ),
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        new Column(
                          children: <Widget>[
                            new Text("4Kg", style: TextStyle(fontWeight: FontWeight.normal, color: const Color(0xFF5A5859), fontSize: 16.0),),
                            new IconButton(icon: new Icon(const IconData(0xe800, fontFamily: "QepiIcons"), color: const Color(0xFF5A5859),), onPressed: null,),
                          ],
                        ),
                        new Column(
                          children: <Widget>[
                            new Text("7 Items", style: TextStyle(fontWeight: FontWeight.normal, color: const Color(0xFF5A5859), fontSize: 16.0),),
                            new IconButton(icon: new Icon(const IconData(0xe803, fontFamily: "QepiIcons"), color: const Color(0xFF5A5859),), onPressed: null,),
                          ],
                        ),
                        new Column(
                          children: <Widget>[
                            new Text("103.00 €", style: TextStyle(fontWeight: FontWeight.normal, color: const Color(0xFF5A5859), fontSize: 16.0),),
                            new IconButton(icon: new Icon(const IconData(0xe806, fontFamily: "QepiIcons"),color: const Color(0xFF5A5859),), onPressed: null,),
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
                      child: const Icon(Icons.add,color: const Color(0xFFF09731),size: 50.0,),
                  onPressed: () {
                       Navigator.push(context, MaterialPageRoute(builder: (context) => ItemBox()));
                  },
                  ),
                  );}
                  else {
                  return new Card(
                    child: new Container(
                      decoration: new BoxDecoration(
                          border: new Border.all(color: const Color(0xFFFBDDBB))
                      ),
                      child: new Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          new Container(
                            padding: EdgeInsets.only(left: 15.0, right: 15.0,top: 10.0, bottom: 10.0),
                            child: new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                new Text("Chocolates", style: TextStyle(color: const Color(0xFF5A5859), fontSize: 15.0, fontWeight: FontWeight.bold,),),
                                new Text("25.00 €", style: TextStyle(color: const Color(0xFF5A5859), fontSize: 14.0, fontWeight: FontWeight.normal,),),
                              ],
                            ),
                          ),
                          new HorizontalDivider(),
                          new Container(
                            padding: EdgeInsets.only(left: 25.0, right: 25.0,top: 10.0, bottom: 10.0),
                            child:
                            new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                new Icon(Icons.school, color: const Color(0xFFF09731),size: 50.0,),
                                new Column(
                                  children: <Widget>[
                                    new Text("2 pacs", style: TextStyle(color: const Color(0xFF5A5859),),),
                                    new petitHorizontalDivider(),
                                    new Text("300 gr", style: TextStyle(color: const Color(0xFF5A5859),),),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          new Container(
                            padding: EdgeInsets.only(left: 15.0, right: 25.0,top: 5.0, bottom: 10.0),
                            child:
                            new Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                new Flexible(
                                  child: new Text("El Ceibo salty chocolates typical from Bolivia. El Ceibo salty chocolates typical from Bolivia.",
                                    style: TextStyle(color: const Color(0xFF5A5859),),
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    softWrap: true,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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
