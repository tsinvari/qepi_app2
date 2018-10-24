import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';

double _discreteValue = 0.0;
class ItemBox extends StatefulWidget{
  final int indexSel;
  final Map<String, String> value;
  ItemBox({Key key, this.value, this.indexSel}) : super (key: key);
  @override
  Item_Box createState()=> Item_Box();
}
var valueQttType = "pieces";

class Item_Box extends State<ItemBox>{
  var itemNuevo;
  var itemList = [['Chocolates', '0xe811'],
                  ['Souvenirs', '0xe80d'],
                  ['Sweater', '0xe810'],
                  ['Cellphones', '0xe80e'],
                  ['Pants', '0xe812'],
                  ['Food', '0xe80f'],
                  ['Jewerly', '0xe80c'],
                  ['Shooes', '0xe813']];
  var colortipo = Colors.white;
  var colorFont = const Color(0xFF5A5859);
  var indextipo;
  var iconType = '0xe813';

  final quantityController = TextEditingController();
  final costController = TextEditingController();
  final descripController = TextEditingController();
  final costKey = GlobalKey<FormState>();
  final quantityKey = GlobalKey<FormState>();
  final descripKey = GlobalKey<FormState>();
  final superKey = GlobalKey<FormState>();

  Map <String, String> itemMap = {
    'indexTipo': '',
    'precio' : '',
    'quantity': '',
    'valueQttType': '',
    'peso': '',
    'description': '',
    'itemIndex': ''
  };


  @override
  void initState() {
    super.initState();
    var result = widget.value;
  //  var result1 = '${widget.value}';
    _discreteValue = 0.00;
    if (result.length >1)
    {
      indextipo = int.tryParse(widget.value['indexTipo']);
      costController.text = widget.value['precio'];
      quantityController.text = widget.value['quantity'];
      valueQttType = widget.value['valueQttType'];
      _discreteValue = double.tryParse(widget.value['peso']);
      descripController.text = widget.value['description'];
      colortipo = const Color(0xFFF09731);
      colorFont = Colors.white;
    }

  }

  @override
  void dispose() {
    // Clean up the controller when the Widget is disposed
    quantityController.dispose();
    costController.dispose();
    descripController.dispose();
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
          child:
          new Form(
            key: superKey,
            child: new ListView(
              children: <Widget>[
                new Card(
                  child: new Column(
                    //mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Container(
                        padding: EdgeInsets.only(bottom: 15.0, top: 15.0, left: 15.0),
                        child: new Text ("Item", style: TextStyle(fontWeight: FontWeight.bold, color: const Color(0xFFF09731), fontSize: 18.0),),
                      ),
                      new Container(
                        color: const Color(0xFFfcf9f4),
                        height:80.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: List.generate(itemList.length, (index) {
                            if (index == indextipo){
                              return new Card(
                                color: colortipo,
                                child: new Stack(alignment: const Alignment(0.0, 0.0),
                                  children: <Widget>[
                                    new Container(
                                        height: 60.0,
                                        width: 75.0,
                                        color: colortipo,
                                        child: new IconButton(icon: new Icon(IconData(int.tryParse(itemList[index][1]), fontFamily: "QepiIconsItemTypes"), size: 44.0, color: colorFont,),
                                            onPressed: (){
                                              setState(() {
                                                indextipo = index;
                                                colortipo = const Color(0xFFF09731);
                                                colorFont = Colors.white;
                                                iconType = itemList[index][1];
                                              });
                                            })
                                    ),
                                    //new Text(itemList[index], style: new TextStyle(color: colorFont, fontSize: 13.0, fontWeight: FontWeight.bold)),
                                  ],
                                ),
                              );
                            }else {
                              return new Card(
                                child: new InkWell(
                                  onTap:(){
                                    setState(() {
                                      indextipo = index;
                                      colortipo = const Color(0xFFF09731);
                                      colorFont = Colors.white;
                                      iconType = itemList[index][1];
                                    });
                                  },
                                  child: new Stack(alignment: const Alignment(0.0, 0.0),
                                  children: <Widget>[
                                      new Container(
                                        height: 60.0,
                                        width: 75.0,
                                        color: Colors.white,
                                        child: new Icon(IconData(int.tryParse(itemList[index][1]), fontFamily: "QepiIconsItemTypes"), color: const Color(0xFFF6CA97), size: 44.0,),
                                      ),
                                    new Text(itemList[index][0], style: new TextStyle(color: const Color(0xFF5A5859), fontSize: 13.0, fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ),
                              );
                            }
                          }),
                        ),
                      ),
                    ],
                  ),
                ),
                new Card(
                  child: new Container(
                    padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Container (
                          child: new Row(
                            children: <Widget>[
                              new Text("Weigth   ", style: new TextStyle(fontSize: 14.0, fontFamily: "Gibson", color: const Color(0xFFB9B9B9), fontWeight: FontWeight.normal,),),
                              new Text(_discreteValue.round().toString(),style: new TextStyle(fontSize: 14.0, fontFamily: "Gibson", color: const Color(0xFF5A5859), fontWeight: FontWeight.normal,),),
                            ]
                          )
                        ),

                        /*new Container(
                          padding: EdgeInsets.symmetric(horizontal: 10.0),
                          child: *///new Row(
                            //mainAxisSize: MainAxisSize.max,
                            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            //crossAxisAlignment: CrossAxisAlignment.center,
                           // children: <Widget>[
                              new Container(
                                padding: EdgeInsets.only(top: 10.0),
                                child: new Slider(
                                  value: _discreteValue,
                                  min: 0.0,
                                  max: 5000.0,
                                  activeColor: const Color(0xFFffd85f),
                                  inactiveColor: const Color(0xFFE0E0E0),
                                  divisions: 100,
                                  label: '${_discreteValue.round()}',
                                  onChanged: (double value) {
                                    setState(() {
                                      _discreteValue = value;
                                    });
                                  },
                                ),
                              ),
                              new Container(
                                padding: EdgeInsets.only(bottom: 10.0),
                                child: new Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    new Text("50 gr",style: new TextStyle(fontSize: 14.0, fontFamily: "Gibson", color: const Color(0xFF5A5859), fontWeight: FontWeight.normal,),),
                                    new Text("5000 gr",style: new TextStyle(fontSize: 14.0, fontFamily: "Gibson", color: const Color(0xFF5A5859), fontWeight: FontWeight.normal,),),
                                  ],
                                ),
                              ),
                            //],
                          //),
                        //),
                      ],
                    ),
                  ),
                ),

                new Card(
                  child: new Container(
                    padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
                    child: new Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text("Quantity", style: new TextStyle(fontSize: 14.0, fontFamily: "Gibson", color: const Color(0xFFB9B9B9), fontWeight: FontWeight.normal,),),
                        new Container(
                          padding: EdgeInsets.symmetric(horizontal: 115.0),
                          child: new Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              new Flexible(
                                child: new Container(
                                  padding: EdgeInsets.only(left:10.0,right: 20.0),
                                  child: new TextFormField(
                                    decoration: new InputDecoration(
                                      hintText: "1",
                                      hintStyle: new TextStyle(color: const Color(0xFFB9B9B9),fontFamily: "Gibson", fontWeight: FontWeight.normal,),
                                      //border: InputBorder.none,
                                    ),
                                    controller: quantityController,
                                    validator: (value){
                                      if (value.isEmpty)
                                      {return 'Please enter the quantity of items';}
                                    },
                                    style: new TextStyle(fontFamily: "Gibson", color: const Color(0xFF5A5958),),
                                  ),
                                ),
                              ),
                              new DropdownButton<String>(
                                hint: new Text(valueQttType, style: new TextStyle(color: const Color(0xFF5A5958), fontFamily: "Gibson",fontSize: 16.0),),
                                items: <String>['pieces', 'pair', 'pac'].map((String valueQttType) {
                                  return new DropdownMenuItem<String>(
                                    value: valueQttType,
                                    child: new Text(valueQttType, style: new TextStyle(color: const Color(0xFF5A5958), fontFamily: "Gibson",fontSize: 16.0)),
                                  );
                                }).toList(),
                                style: new TextStyle(
                                  fontSize: 15.0,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: "Gibson",
                                  color: const Color(0xFF5A5958),),
                                iconSize: 30.0,
                                onChanged: (String selectedWQType) {
                                  //print("Selected city $selectedMonth, we are going to refresh the UI");
                                  setState(() {
                                    valueQttType = selectedWQType;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                        /*new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            new Text("Pieces"),
                            new Text("Pac"),
                            new Text("Pair"),
                          ],
                        ),*/
                      ],
                    ),
                  ),
                ),

                new Card(
                  child: new Container(
                    padding: EdgeInsets.only(top: 10.0, right: 15.0, left: 15.0, bottom: 20.0),
                    child: new Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Text("Cost", style: new TextStyle(fontSize: 14.0, fontFamily: "Gibson", color: const Color(0xFFB9B9B9), fontWeight: FontWeight.normal,),),
                          new Container(
                            padding: EdgeInsets.symmetric(horizontal: 130.0),
                                child: new Row(
                                  //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: <Widget>[
                                    new Flexible(
                                    child: new TextFormField(
                                      decoration: new InputDecoration(
                                        hintText: "100.00",
                                        hintStyle: new TextStyle(color: const Color(0xFFB9B9B9),fontFamily: "Gibson", fontWeight: FontWeight.normal,),
                                        //border: InputBorder.none,
                                      ),
                                      //textAlign: TextAlign.center,
                                      controller: costController,
                                      validator: (value){
                                        if (value.isEmpty)
                                        {return 'Please enter the cost of the item';}
                                      },
                                      style: new TextStyle(fontFamily: "Gibson", color: const Color(0xFF5A5958),),
                                    ),
                                    ),
                                    new Text("€", style: new TextStyle(fontSize: 14.0, fontFamily: "Gibson", color: const Color(0xFF5A5958), fontWeight: FontWeight.bold,),),
                                  ],
                                ),
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
                             // new Form(
                          //      child:
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
                                    //hintText: '${widget.value}',
                                    hintStyle: new TextStyle(color: const Color(0xFFB9B9B9),fontFamily: "Gibson"),
                                  ),
                                  controller: descripController,
                                  validator: (value){
                                    if (value.isEmpty)
                                    {return 'Please enter some text';}
                                  },
                                  style: new TextStyle(fontFamily: "Gibson", fontSize: 15.0, color: const Color(0xFF5A5859), fontWeight: FontWeight.normal,),
                                ),
                              //)
                            ],
                          ),
                        ),
                      ],
                    ),),
                ),

                new Container(
                  padding: const EdgeInsets.only(bottom: 10.0, top: 20.0),
                  child:
                  new Center(
                    child: new Container(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 3.0),
                      child: new Material(
                        child: new InkWell(
                          onTap: (){
                            if (superKey.currentState.validate() ){
                              if (widget.value.length == 1){
                              setState(() {
                                itemMap['indexTipo'] = indextipo.toString();
                                itemMap['precio']= costController.text.toString();
                                itemMap['quantity'] = quantityController.text.toString();
                                itemMap['valueQttType'] = valueQttType.toString();
                                itemMap['peso'] = _discreteValue.round().toString();
                                itemMap['description'] = descripController.text.toString();
                                itemMap['itemIndex'] = '0';
                                itemNuevo = [indextipo, int.tryParse(costController.text), int.tryParse(quantityController.text), valueQttType, _discreteValue.round(),descripController.text,'n',0];
                              });}
                              else{
                                itemMap['indexTipo'] = indextipo.toString();
                                itemMap['precio']= costController.text.toString();
                                itemMap['quantity'] = quantityController.text.toString();
                                itemMap['valueQttType'] = valueQttType.toString();
                                itemMap['peso'] = _discreteValue.round().toString();
                                itemMap['description'] = descripController.text.toString();
                                itemMap['itemIndex'] = widget.indexSel.toString();
                                itemNuevo = [indextipo, int.tryParse(costController.text), int.tryParse(quantityController.text), valueQttType, _discreteValue.round(),descripController.text,'m',widget.indexSel];
                              }
                              Navigator.pop(context, itemMap);
                            }
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
                              child: new Text('SAVE',
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
      )

    )
  ;}
}
