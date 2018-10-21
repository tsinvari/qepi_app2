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
class VerticalDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 50.0,
      width: 1.0,
      color: const Color(0xFFE6E6E6),
      margin: const EdgeInsets.only(left: 10.0, right: 10.0),
    );
  }
}

var valueMonth = "Month";
var valueHeigth = "Heigth";
var valueWeigth = "Weigth";
var valueX = "Heigth";
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
                                      child: new TextFormField(
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
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Container(
                              padding: const EdgeInsets.only(top: 15.0, bottom: 0.0),
                              child: new Text("Month", style: new TextStyle(fontSize: 16.0, fontFamily: "Gibson", color: const Color(0xFFB9B9B9), fontWeight: FontWeight.normal,)),
                            ),
                            new DropdownButton<String>(
                              hint: new Text(valueMonth, style: new TextStyle(color: const Color(0xFF5A5958), fontFamily: "Gibson",fontSize: 16.0),),
                              items: <String>['January', 'February', 'March', 'April', 'May', 'Jun', 'July', 'August','September','October', 'November','December'].map((String valueMonth) {
                                return new DropdownMenuItem<String>(
                                  value: valueMonth,
                                  child: new Text(valueMonth, style: new TextStyle(color: const Color(0xFF5A5958), fontFamily: "Gibson",fontSize: 16.0)),
                                );
                              }).toList(),
                              style: new TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.normal,
                                fontFamily: "Gibson",
                                color: const Color(0xFF5A5958),),
                              iconSize: 30.0,
                              onChanged: (String selectedMonth) {
                                //print("Selected city $selectedMonth, we are going to refresh the UI");
                                setState(() {
                                  valueMonth = selectedMonth;
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
                        new Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            new Container(
                              padding: const EdgeInsets.only(top: 15.0, bottom: 0.0),
                              child: new Text("Size", style: new TextStyle(fontSize: 16.0, fontFamily: "Gibson", color: const Color(0xFFB9B9B9), fontWeight: FontWeight.normal,)),
                            ),
                            new Row(
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                new DropdownButton<String>(
                                  hint: new Text(valueHeigth, style: new TextStyle(color: const Color(0xFF5A5958), fontFamily: "Gibson",fontSize: 16.0),),
                                  items: <String>['10', '20', '30', '40', '50', '60', '70', '80','90','100'].map((String valueHeigth) {
                                    return new DropdownMenuItem<String>(
                                      value: valueHeigth,
                                      child: new Text(valueHeigth, style: new TextStyle(color: const Color(0xFF5A5958), fontFamily: "Gibson",fontSize: 16.0)),
                                    );
                                  }).toList(),
                                  style: new TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "Gibson",
                                    color: const Color(0xFF5A5958),),
                                  iconSize: 30.0,
                                  onChanged: (String selectedHeigth) {
                                    //print("Selected city $selectedMonth, we are going to refresh the UI");
                                    setState(() {
                                      valueHeigth = selectedHeigth;
                                    });
                                  },
                                ),
                                new Text("cm      ", style: new TextStyle(fontSize: 16.0, fontFamily: "Gibson", color: const Color(0xFFB9B9B9), fontWeight: FontWeight.normal,)),
                                new DropdownButton<String>(
                                  hint: new Text(valueWeigth, style: new TextStyle(color: const Color(0xFF5A5958), fontFamily: "Gibson",fontSize: 16.0),),
                                  items: <String>['10', '20', '30', '40', '50', '60', '70', '80','90','100'].map((String valueWeigth) {
                                    return new DropdownMenuItem<String>(
                                      value: valueWeigth,
                                      child: new Text(valueWeigth, style: new TextStyle(color: const Color(0xFF5A5958), fontFamily: "Gibson",fontSize: 16.0)),
                                    );
                                  }).toList(),
                                  style: new TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "Gibson",
                                    color: const Color(0xFF5A5958),),
                                  iconSize: 30.0,
                                  onChanged: (String selectedWeigth) {
                                    //print("Selected city $selectedMonth, we are going to refresh the UI");
                                    setState(() {
                                      valueWeigth = selectedWeigth;
                                    });
                                  },
                                ),
                                new Text("cm      ", style: new TextStyle(fontSize: 16.0, fontFamily: "Gibson", color: const Color(0xFFB9B9B9), fontWeight: FontWeight.normal,)),
                                new DropdownButton<String>(
                                  hint: new Text(valueX, style: new TextStyle(color: const Color(0xFF5A5958), fontFamily: "Gibson",fontSize: 16.0),),
                                  items: <String>['10', '20', '30', '40', '50', '60', '70', '80','90','100'].map((String valueX) {
                                    return new DropdownMenuItem<String>(
                                      value: valueX,
                                      child: new Text(valueX, style: new TextStyle(color: const Color(0xFF5A5958), fontFamily: "Gibson",fontSize: 16.0)),
                                    );
                                  }).toList(),
                                  //value: valueX,
                                  style: new TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.normal,
                                    fontFamily: "Gibson",
                                    color: const Color(0xFF5A5958),),
                                  iconSize: 30.0,
                                  onChanged: (String selectedX) {
                                    //print("Selected city $selectedMonth, we are going to refresh the UI");
                                    setState(() {
                                      valueX = selectedX;
                                    });
                                  },
                                ),
                                new Text("cm", style: new TextStyle(fontSize: 16.0, fontFamily: "Gibson", color: const Color(0xFFB9B9B9), fontWeight: FontWeight.normal,)),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            new Card(
            child: new InkWell(
            onTap: () async {
                final result = await Navigator.push(context, MaterialPageRoute(builder: (context) => ItemDetails()));
                if (result != null)
                  setState(() {
                    itemvalues.removeRange(0, 2);
                    itemvalues = result;
                  });
              },
              child: new Container(
                padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.0),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    new Text ("Item details", style: new TextStyle(fontSize: 14.0, fontFamily: "Gibson", color: const Color(0xFFB9B9B9), fontWeight: FontWeight.normal,),),
                    new Container(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            new Icon(const IconData(0xe800, fontFamily: "QepiIcons"), color: const Color(0xFF5a5859),),
                            new Text(itemvalues[0].toString()+" Kg     ", style: new TextStyle(fontSize: 14.0,color: const Color(0xFF5A5958),),),
                            new Icon(const IconData(0xe801, fontFamily: "QepiIcons"), color: const Color(0xFF5a5859),),
                            new Text(itemvalues[1].toString()+" Items", style: new TextStyle(fontSize: 14.0,color: const Color(0xFF5A5958),),),
                            new Icon(const IconData(0xe806, fontFamily: "QepiIcons"), color: const Color(0xFF5a5859),),
                            new Text(itemvalues[2].toString()+" €     ", style: new TextStyle(fontSize: 14.0,color: const Color(0xFF5A5958),),),
                            new Icon(Icons.arrow_right, color: const Color(0xFFF09731),),
                            /*new IconButton(icon: new Icon(Icons.arrow_right, color: const Color(0xFFF09731),),
                              onPressed: () async {
                              final result = await Navigator.push(context, MaterialPageRoute(builder: (context) => ItemDetails()));
                              if (result != null)
                                setState(() {
                                  itemvalues.removeRange(0, 2);
                                  itemvalues = result;
                                });
                              },),*/
                          ],
                        ),
                    ),
                  ],
                ),
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
              child: new InkWell(
                onTap: (){
                  //Navigator.push(context, MaterialPageRoute(builder: (context) => DetailTraveler()));
                },
                child: new Container(
                padding: const EdgeInsets.only(left: 18.0, top:10.0, bottom: 10.0),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    new Text ("Recipient", style: new TextStyle(fontSize: 14.0, fontFamily: "Gibson", color: const Color(0xFFB9B9B9), fontWeight: FontWeight.normal,),),
                    new Container(
                      padding: const EdgeInsets.only(left: 1.0, right: 15.0),
                      child: //new Flex(
                        //direction: Axis.vertical,
                        //children: <Widget>[
                          //new Container(
                            //padding: const EdgeInsets.only(top: 10.0, right: 0.0, left: 5.0),
                            //child:
                              new Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                new Column(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: <Widget> [
                                    new Text("Hernan MARTINEZ",
                                      style: TextStyle(color: const Color(0xFF5A5859),fontWeight: FontWeight.bold,),
                                    ),
                                    new Text("Strasbourg",
                                      style: TextStyle(color: const Color(0xFF5A5859),),
                                    ),
                                  ],
                                ),
                                new VerticalDivider(),
                                new Container(
                                    height: 60.0,
                                    width: 60.0,
                                    decoration: new BoxDecoration(
                                        border: new Border.all(color: const Color(0xFFF09731), width: 4.0)
                                    ),
                                    child: //new Icon(Icons.person, color: const Color(0xFF5a5859), size: 25.0,)
                                    Image.network(
                                      'https://content-static.upwork.com/uploads/2014/10/02123010/profilephoto_goodcrop.jpg',
                                        fit: BoxFit.cover
                                    ),
                                    //new Image.asset(stringToImageLocation, fit: BoxFit.cover)
                                ),
                                new Icon(Icons.arrow_right, color: const Color(0xFFF09731),),
                              ],
                            ),
                         // ),
                        //],
                     // ),
                    ),
                  ],
                ),),),
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
