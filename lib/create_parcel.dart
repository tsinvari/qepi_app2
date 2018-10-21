import 'package:flutter/material.dart';
import './item_details.dart';
import 'dart:async';

class HorizontalDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 1.0,
      width: 330.0,
      color: const Color(0xFFE6E6E6),
      margin: const EdgeInsets.only(left: 0.0, top: 0.1, bottom: 0.1),
    );
  }
}
var value = "Month";
var x = "";
var itemvalues = ['0','0','0'];
class CreateParcel extends StatefulWidget{
  Create_Parcel createState()=> Create_Parcel();
}



class Create_Parcel extends State<CreateParcel>{
  DateTime _date = new DateTime.now();
  TimeOfDay _time = new TimeOfDay.now();

  Future <Null> _selectDate (BuildContext context) async {
    final DateTime picked = await showDatePicker(context: context,
        initialDate: _date,
        firstDate: new DateTime(2017),
        lastDate: new DateTime(2019));
  }

  final fromController = TextEditingController();
  final toController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    fromController.dispose();
    toController.dispose();
    super.dispose();
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
      body: new Container(
        child: new ListView(
          children: <Widget>[
            new Card(
              child: new Container(
                padding: const EdgeInsets.only(left: 18.0, bottom: 10.0, top: 10.0, right: 18.0),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    new Row (
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Flexible(
                          child: new Column (
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              new Row(
                                children: <Widget>[
                                  new Flexible(
                                      child:new TextFormField(
                                        decoration: new InputDecoration(
                                          hintText: "From",
                                          hintStyle: new TextStyle(color: const Color(0xFFB9B9B9),fontFamily: "Gibson", fontWeight: FontWeight.normal,),
                                          border: InputBorder.none,
                                        ),
                                        controller: fromController,
                                        style: new TextStyle(fontFamily: "Gibson", fontSize: 16.0, color: const Color(0xFF5A5859), fontWeight: FontWeight.bold,),
                                      ),
                                  ),
                                  new IconButton(icon: new Icon(Icons.close, color: const Color(0xFFB9B9B9)), onPressed: (){setState((){fromController.text = "";});})
                                ],
                              ),
                              new HorizontalDivider(),
                              new Row(
                                children: <Widget>[
                                  new Flexible(
                                    child:new TextFormField(
                                      decoration: new InputDecoration(
                                        hintText: "To",
                                        hintStyle: new TextStyle(color: const Color(0xFFB9B9B9),fontFamily: "Gibson", fontWeight: FontWeight.normal,),
                                        border: InputBorder.none,
                                      ),
                                      controller: toController,
                                      style: new TextStyle(fontFamily: "Gibson", fontSize: 16.0, color: const Color(0xFF5A5859), fontWeight: FontWeight.bold,),
                                    ),
                                  ),
                                  new IconButton(icon: new Icon(Icons.close, color: const Color(0xFFB9B9B9)), onPressed: (){setState((){toController.text = "";});})
                                ],
                              ),
                            ],
                          ),
                        ),
                        new IconButton(icon: new Icon(Icons.swap_vertical_circle, color: const Color(0xFFF09731),), onPressed: (){ setState(() { x = fromController.text; fromController.text = toController.text ; toController.text = x;});}),
                      ],
                    ),
                    new Row(
                      children: <Widget>[
                        //new Text("Fecha", style: new TextStyle(fontSize: 16.0, fontFamily: "Gibson", color: const Color(0xFFB9B9B9), fontWeight: FontWeight.normal,),),
                        //new IconButton(icon: new Icon(Icons.arrow_drop_down, color: const Color(0xFF5A5859),), onPressed: (){_selectDate(context);}),
                        new Column(
                          children: <Widget>[
                            new DropdownButton<String>(
                              hint: new Text(value),
                              items: <String>['January', 'February', 'March', 'April', 'May', 'Jun', 'July', 'August','September','October', 'November','December'].map((String value) {
                                return new DropdownMenuItem<String>(
                                  value: value,
                                  child: new Text(value),
                                );
                              }).toList(),
                              onChanged: (String selectedMonth) {
                                print("Selected city $selectedMonth, we are going to refresh the UI");
                                setState(() {
                                  value = selectedMonth;
                                  });
                              },
                            ),
                          ],
                        ),
                      ],
                    ),
                    new Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        new Text("Size", style: new TextStyle(fontSize: 16.0, fontFamily: "Gibson", color: const Color(0xFFB9B9B9), fontWeight: FontWeight.normal,)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            new Card(
              child: new Container(
                padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.0),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    new Text ("Item details", style: new TextStyle(fontSize: 14.0, fontFamily: "Gibson", color: const Color(0xFFB9B9B9), fontWeight: FontWeight.normal,),),
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        new Icon(const IconData(0xe800, fontFamily: "QepiIcons"), color: const Color(0xFF5a5859),),
                        new Text(itemvalues[0].toString()+" Kg     ", style: new TextStyle(fontSize: 14.0,color: const Color(0xFF5A5958),),),
                        new Icon(const IconData(0xe801, fontFamily: "QepiIcons"), color: const Color(0xFF5a5859),),
                        new Text(itemvalues[1].toString()+" Items", style: new TextStyle(fontSize: 14.0,color: const Color(0xFF5A5958),),),
                        new Icon(const IconData(0xe806, fontFamily: "QepiIcons"), color: const Color(0xFF5a5859),),
                        new Text(itemvalues[2].toString()+" €     ", style: new TextStyle(fontSize: 14.0,color: const Color(0xFF5A5958),),),
                        new IconButton(icon: new Icon(Icons.arrow_right, color: const Color(0xFFF09731),),
                          onPressed: () async {
                          final result = await Navigator.push(context, MaterialPageRoute(builder: (context) => ItemDetails()));
                          if (result != null)
                            setState(() {
                              itemvalues.removeRange(0, 2);
                              itemvalues = result;
                            });
                          },),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            new Card(
              child: new Container(
                padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.0),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    new Text ("Description", style: new TextStyle(fontSize: 14.0, fontFamily: "Gibson", color: const Color(0xFFB9B9B9), fontWeight: FontWeight.normal,),),
                    new Container(
                      padding: const EdgeInsets.symmetric(horizontal: 0.0),
                      child: new Flex(
                        direction: Axis.vertical,
                        children: <Widget>[
                          new TextFormField(
                            keyboardType: TextInputType.multiline,
                            maxLength: 500,
                            maxLines: 5,
                            decoration: new InputDecoration(
                              contentPadding: new EdgeInsets.fromLTRB(
                                  10.0, 15.0, 10.0, 10.0),
                              border: new OutlineInputBorder(
                                borderRadius: new BorderRadius.circular(5.0),
                                borderSide: BorderSide(color: const Color(0xFFB9B9B9)),
                              ),
                              focusedBorder: new OutlineInputBorder(
                                  borderRadius: new BorderRadius.circular(5.0),
                                  borderSide: BorderSide(color: const Color(0xFFF09731))
                              ),
                              hintText: "Some things that my friend loves from Bolivia...",
                              hintStyle: new TextStyle(color: const Color(0xFFB9B9B9),fontFamily: "Gibson"),
                            ),
                            style: new TextStyle(fontFamily: "Gibson", fontSize: 15.0, color: const Color(0xFF5A5859), fontWeight: FontWeight.normal,),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),),
            ),
            new Card(
              child: new Container(
                padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.0),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    new Text ("Recipient", style: new TextStyle(fontSize: 14.0, fontFamily: "Gibson", color: const Color(0xFFB9B9B9), fontWeight: FontWeight.normal,),),
                    new Container(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child:
                      new Flex(
                        direction: Axis.vertical,
                        children: <Widget>[
                          new TextFormField(
                            decoration: new InputDecoration(
                              hintText: "jenny@gmail.com",
                              hintStyle: new TextStyle(color: const Color(0xFFB9B9B9),fontFamily: "Gibson"),
                            ),
                            style: new TextStyle(fontFamily: "Gibson", fontSize: 15.0, color: const Color(0xFF5A5859), fontWeight: FontWeight.normal,),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),),
            ),
            new Container(
            padding: const EdgeInsets.only(top: 10.0),
            child: new Center(
                child: new Text ("COST TO SEND 36.00 €", style: new TextStyle(fontSize: 17.0, fontFamily: "Gibson", color: const Color(0xFF5a5859), fontWeight: FontWeight.bold,),),
              ),
            ),
            new Container(
              padding: const EdgeInsets.only(bottom: 10.0, top: 5.0),
              child: new Center(
                child: new Container(
                  padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 3.0),
                  child: new Material(
                    child: new InkWell(
                      onTap: (){
                        //Navigator.push(context, MaterialPageRoute(builder: (context) => CreateParcel()));
                      },
                      child: new Container(
                        width: 350.0,
                        height: 40.0,
                        decoration: new BoxDecoration(
                          //color: const Color(0xFFffd85f),
                          gradient: new LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              const Color(0xFFffd85f),
                              const Color(0xFFffd85f),
                            ],
                          ),
                          border: new Border.all(color: const Color(0xFFffd85f), width: 2.0),
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                        child: new Center(
                          child: new Text('SAVE and Add Traveler',
                            style: new TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: "Gibson",
                                color: Colors.white),),
                        ),
                      ),
                    ),
                    color: Colors.transparent,
                  ),
                  //color: const Color(0xFFF09731),
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}
