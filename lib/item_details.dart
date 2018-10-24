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

class HorizontalDividerBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 1.0,
      width: 180.0,
      color: const Color(0xFFE6E6E6),
      margin: const EdgeInsets.only(left: 0.0, top: 0.1, bottom: 0.1),
    );
  }
}

calc(List itemsDe) {
  var pesoTotal = 0.0;
  var itemsTotal = 0;
  var precioTotal = 0.0;
  for (var i = 0; i < itemsDe.length; i++)
  {
    precioTotal = precioTotal+int.tryParse(itemsDe[i]['precio']);
    pesoTotal = pesoTotal+int.tryParse(itemsDe[i]['peso']);

  }
  itemsTotal = itemsDe.length;
  var total = [(pesoTotal/1000),itemsTotal,precioTotal];
  return total;
}

class ItemDetails extends StatefulWidget{
  final List value;
  @override
  ItemDetails({Key key, this.value,}) : super (key: key);
  Item_Details createState()=> Item_Details();
}

class Item_Details extends State<ItemDetails>{

  DateTime _date = new DateTime.now();
  TimeOfDay _time = new TimeOfDay.now();

  Future <Null> _selectDate (BuildContext context) async {
    final DateTime picked = await showDatePicker(context: context,
        initialDate: _date,
        firstDate: new DateTime(2017),
        lastDate: new DateTime(2019));
  }
  var itemsDe = [];
  var enviarDe = [];
  var enviar;
  var itemList = [['Chocolates', '0xe811'],
  ['Souvenirs', '0xe80d'],
  ['Sweater', '0xe810'],
  ['Cellphones', '0xe80e'],
  ['Pants', '0xe812'],
  ['Food', '0xe80f'],
  ['Jewerly', '0xe80c'],
  ['Shooes', '0xe813']];

  @override
  void initState() {
    super.initState();
    var result = widget.value;
    //  var result1 = '${widget.value}';
    if (result.length > 0)
    {
      itemsDe = result;
    }

  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        leading: new IconButton(icon: new Icon(Icons.arrow_back),
            onPressed: (){
              setState(() {
                enviar = [calc(itemsDe)[0].toString(), calc(itemsDe)[1].toString(), calc(itemsDe)[2].toString(),itemsDe];
              });
              Navigator.pop(context, enviar);
            }),
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
                      child: new Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          new Text ("Item details", style: TextStyle(fontWeight: FontWeight.bold, color: const Color(0xFFF09731), fontSize: 18.0),),
                        ],
                      ),
                     ),
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        new Column(
                          children: <Widget>[
                            new Text(calc(itemsDe)[0].toString()+" Kg", style: TextStyle(fontWeight: FontWeight.normal, color: const Color(0xFF5A5859), fontSize: 16.0),),
                            new IconButton(icon: new Icon(const IconData(0xe800, fontFamily: "QepiIcons"), color: const Color(0xFF5A5859),), onPressed: null,),
                          ],
                        ),
                        new Column(
                          children: <Widget>[
                            new Text(calc(itemsDe)[1].toString()+" Items", style: TextStyle(fontWeight: FontWeight.normal, color: const Color(0xFF5A5859), fontSize: 16.0),),
                            new IconButton(icon: new Icon(const IconData(0xe803, fontFamily: "QepiIcons"), color: const Color(0xFF5A5859),), onPressed: null,),
                          ],
                        ),
                        new Column(
                          children: <Widget>[
                            new Text(calc(itemsDe)[2].toString()+" €", style: TextStyle(fontWeight: FontWeight.normal, color: const Color(0xFF5A5859), fontSize: 16.0),),
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
                children: List.generate(itemsDe.length+1, (index){
                  if (index == 0)
                  {return new Card(
                    child: FlatButton(
                      child: const Icon(Icons.add,color: const Color(0xFFF09731),size: 50.0,),
                      onPressed: () async {
                        Map <String, String> a ={};
                        var route = new MaterialPageRoute(builder: (context) =>  ItemBox(value: a));
                        final result = await Navigator.of(context).push(route);
                        setState(() {
                          Map <String, String> Temp = {
                            'indexTipo': '',
                            'precio' : '',
                            'quantity': '',
                            'valueQttType': '',
                            'peso': '',
                            'description': '',
                          };
                          Temp['indexTipo'] = result['indexTipo'];
                          Temp['precio'] = result['precio'];
                          Temp['quantity']= result['quantity'];
                          Temp['valueQttType']= result['valueQttType'];
                          Temp['peso']= result['peso'];
                          Temp['description']= result['description'];

                          itemsDe.add(Temp);});
                      },
                    ),
                  );}
                  else {
                  return new Card(
                    child: new GestureDetector(
                        onTap: () async {
                          var route = new MaterialPageRoute(builder: (context) =>  ItemBox(value: itemsDe[index-1], indexSel: index));
                          final result = await Navigator.of(context).push(route);
                          if (result != null)
                            setState(() {
                              Map <String, String> Temp = {
                                'indexTipo': '',
                                'precio' : '',
                                'quantity': '',
                                'valueQttType': '',
                                'peso': '',
                                'description': '',
                                'itemIndex':''
                              };
                              var i = int.tryParse(result['itemIndex'])-1;
                              itemsDe[i]['indexTipo'] = result['indexTipo'];
                              itemsDe[i]['precio'] = result['precio'];
                              itemsDe[i]['quantity']= result['quantity'];
                              itemsDe[i]['valueQttType']= result['valueQttType'];
                              itemsDe[i]['peso']= result['peso'];
                              itemsDe[i]['description']= result['description'];

                            });
                        },
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
                                    new Text(itemList[int.tryParse(itemsDe[(index-1)]['indexTipo'])][0], style: TextStyle(color: const Color(0xFF5A5859), fontSize: 15.0, fontWeight: FontWeight.bold,),),
                                    new Text(itemsDe[(index-1)]['peso'].toString()+" gr", style: TextStyle(color: const Color(0xFF5A5859),fontSize: 14.0, fontWeight: FontWeight.normal,),),

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
                                    new Icon(IconData(int.tryParse(itemList[int.tryParse(itemsDe[(index-1)]['indexTipo'])][1]), fontFamily: "QepiIconsItemTypes"), color: const Color(0xFFF09731), size: 50.0,),
                                    new Column(
                                      children: <Widget>[
                                        new Text(itemsDe[(index-1)]['quantity'].toString()+" "+itemsDe[(index-1)]['valueQttType'], style: TextStyle(color: const Color(0xFF5A5859),),),
                                        new petitHorizontalDivider(),
                                        new Text(itemsDe[(index-1)]['precio'].toString()+" €", style: TextStyle(color: const Color(0xFF5A5859),),),
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
                                      child: new Text(itemsDe[(index-1)]['description'],
                                        style: TextStyle(color: const Color(0xFF5A5859),),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        softWrap: true,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              new HorizontalDividerBottom(),
                              new InkWell(
                                onTap: (){
                                  setState(() {
                                    itemsDe.removeAt(index-1);
                                  });
                                  //Navigator.push(context, MaterialPageRoute(builder: (context) => CreateParcel()));
                                },
                                child: new Container (
                                  padding: EdgeInsets.only( top: 2.0, bottom: 2.0),
                                  child: new Icon(Icons.delete, size: 18.0,),
                                  width: 160.0,
                                  height: 20.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                    )
                  );}
                }),
              ),
            ),
          ],
        ),
    );
  }
}
