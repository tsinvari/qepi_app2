import 'package:flutter/material.dart';
import './item_details.dart';
import 'dart:async';

class CreateParcel extends StatelessWidget{

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
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      new Text("Size"),
                    ],
                  ),
                ],

              ),
            ),
          ),
          new Card(
            child: new Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                new Text ("Item details"),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    new Icon(const IconData(0xe800, fontFamily: "QepiIcons"), color: const Color(0xFF5a5859),),
                    new Text("6 Kg     ", style: new TextStyle(fontSize: 12.0,color: const Color(0xFF5A5958),),),
                    new Icon(const IconData(0xe801, fontFamily: "QepiIcons"), color: const Color(0xFF5a5859),),
                    new Text("Items", style: new TextStyle(fontSize: 12.0,color: const Color(0xFF5A5958),),),
                    new Icon(const IconData(0xe806, fontFamily: "QepiIcons"), color: const Color(0xFF5a5859),),
                    new Text("80 €     ", style: new TextStyle(fontSize: 12.0,color: const Color(0xFF5A5958),),),
                    new IconButton(icon: new Icon(Icons.arrow_right),
                      onPressed: (){

                        Navigator.push(context, MaterialPageRoute(builder: (context) => ItemDetails()));

                      },),
                  ],
                ),
              ],
            ),
          ),
          new Card(
            child: new Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    new Text ("Item details"),
                    new Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child:
                      new Flex(
                        direction: Axis.vertical,
                        children: <Widget>[
                          new TextFormField(
                            decoration: new InputDecoration(
                              hintText: "Description",
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
            ),
          ),
          new Card(
            child: new Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                new Text ("Recipient"),
                new Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child:
                  new Flex(
                    direction: Axis.vertical,
                    children: <Widget>[
                      new TextFormField(
                        decoration: new InputDecoration(
                          hintText: "Description",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      )
    );
  }
}
