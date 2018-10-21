import 'package:flutter/material.dart';
import './detail_traveler.dart';
import 'dart:async';

double _discreteValue = 0.0;

class VerticalDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 50.0,
      width: 0.6,
      color: const Color(0xFFF09731),
      margin: const EdgeInsets.only(left: 10.0, right: 25.0),
    );
  }
}

class PetitVerticalDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 20.0,
      width: 0.6,
      color: const Color(0xFFF09731),
      margin: const EdgeInsets.only(left: 25.0, right: 25.0),
    );
  }
}

class HorizontalDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 1.0,
      width: 280.0,
      color: Colors.white,
      margin: const EdgeInsets.only(top: 0.5, bottom: 0.5),
    );
  }
}

class SearchTraveler extends StatefulWidget{
  Search createState()=> Search();
}

class Search extends  State<SearchTraveler> {

  DateTime _date = new DateTime.now();
  TimeOfDay _time = new TimeOfDay.now();

  Future <Null> _selectDate (BuildContext context) async {
    final DateTime picked = await showDatePicker(context: context,
        initialDate: _date,
        firstDate: new DateTime(2017),
        lastDate: new DateTime(2019));

  }

  var travelers = [  ['Quentin LEGRAND', '1','Super experienced mentor  and some useful content posts that have really helped me develop my skills.', '7','5 Kg', '2/2/2018'],
                  ['Ne Michel', '4', 'Super experienced mentor  and some useful content posts that have really helped me develop my skills.','Paris', '17','15 Kg', '2/2/2017'],
                  ['Jenny Murillo', '2', 'Super experienced mentor  and some useful content posts that have really helped me develop my skills.','Paris', '17','15 Kg', '2/2/2017']];
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Container(
              //width: 260.0,
              //height: 260.0,
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: new BoxDecoration(
                color: const Color(0xFFF09731),
                border: new Border.all(color: Colors.white, width: 2.0),
                borderRadius: new BorderRadius.circular(10.0),
              ),
                child: new ExpansionTile(
                  initiallyExpanded: false,
                  title: new Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new TextFormField(
                        decoration: new InputDecoration(
                          hintText: "From",
                          hintStyle: new TextStyle(color: const Color(0xFFFAF4EA) ,fontFamily: "Gibson"),
                          border: InputBorder.none,
                        ),
                        style: new TextStyle(fontFamily: "Gibson", fontSize: 16.0, color: Colors.white, fontWeight: FontWeight.bold,),
                      ),
                      new HorizontalDivider(),
                      new TextFormField(
                        decoration: new InputDecoration(
                          hintText: "To",
                          hintStyle: new TextStyle(color: const Color(0xFFFAF4EA),fontFamily: "Gibson"),
                          border: InputBorder.none,
                        ),
                        style: new TextStyle(fontFamily: "Gibson", fontSize: 16.0, color: Colors.white, fontWeight: FontWeight.bold,),
                      ),
                    ],
                  ),
                  children: <Widget>[
                    new Container(
                      padding: const EdgeInsets.only(left: 18.0),
                      child:
                          new Row(
                            children: <Widget>[
                              new Text("Month", style: new TextStyle(color: Colors.white, fontFamily: "Gibson",fontSize: 16.0),),
                              new IconButton(icon: new Icon(Icons.arrow_drop_down, color: Colors.white,), onPressed: (){_selectDate(context);}),
                            ],
                          ),
                    ),
                    new Container(
                      padding: const EdgeInsets.only(left: 18.0),
                      child:
                          new Row(
                            children: <Widget>[
                              new Text("Weigth", style: new TextStyle(color: Colors.white, fontFamily: "Gibson",fontSize: 16.0),),
                              //new Slider(value: 5.0, min: 0.0, max: 10.0, divisions: 10, onChanged: null, activeColor: Colors.white, inactiveColor: Colors.white,)
                              new Slider(
                                value: _discreteValue,
                                min: 0.0,
                                max: 10.0,
                                activeColor: Colors.red,
                                inactiveColor: Colors.red,
                                divisions: 50,
                                label: '${_discreteValue.round()}',
                                onChanged: (double value) {
                                  setState(() {
                                    _discreteValue = value;
                                  });
                                },
                              ),
                              new Text(_discreteValue.round().toString(), style: new TextStyle(color: Colors.white, fontFamily: "Gibson",fontSize: 16.0),),
                            ],
                          ),
                    ),
                    new Container(
                      padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
                      child:
                      new Center(
                        child: new Container(
                          padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 3.0),
                          child: new Material(
                            child: new InkWell(
                              onTap: (){
                                //Navigator.push(context, MaterialPageRoute(builder: (context) => CreateParcel()));
                              },
                              child: new Container(
                                //width: 100.0,
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
                                  border: new Border.all(color: const Color(0xFFF09731), width: 2.0),
                                  borderRadius: new BorderRadius.circular(10.0),
                                ),
                                child: new Center(
                                  child: new Text('SEARCH',
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

                )
            ),

            new Expanded(
              child: new Container(
                padding: const EdgeInsets.symmetric(horizontal: 3.0, ),
                color: const Color(0xFFfcf9f4),
                child: new ListView.builder(
                  itemCount: travelers.length,
                  itemExtent: 150.0,
                  itemBuilder: (BuildContext context, int index){
                    return new Card(
                        child: new InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => DetailTraveler()));
                        },
                        child: new Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            new ListTile(
                              leading:
                                  new Icon(Icons.person, color: const Color(0xFF5a5859), size: 18.0,),
                                title: new Text(travelers[index][0], style: new TextStyle(fontSize: 14.0,fontFamily: "Gibson",fontWeight: FontWeight.bold,),),
                                subtitle: new Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisSize: MainAxisSize.max,
                                children: <Widget>[
                                  new Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: List.generate(5, (i){
                                      if (i < int.tryParse(travelers[index][1])) {
                                         return new Icon(Icons.star, color: const Color(0xFFF1BD79), size: 20.0,);
                                        } else {
                                         return new Icon(Icons.star_border, color: const Color(0xFFF1BD79), size: 20.0,);
                                          }
                                      })

                                  ),
                                  new Container(
                                    padding: const EdgeInsets.only(top: 5.0, bottom: 10.0),
                                    child: new Text(travelers[index][2],
                                      style: new TextStyle(fontSize: 13.0,color: const Color(0xFF5A5958),),),
                                  ),
                                  new Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      new Icon(const IconData(0xe800, fontFamily: "QepiIcons"), color: const Color(0xFF5a5859),),
                                      new Text(travelers[index][3]+" Kg", style: new TextStyle(fontSize: 12.0,color: const Color(0xFF5A5958),),),
                                      new PetitVerticalDivider(),
                                      new Icon(const IconData(0xe806, fontFamily: "QepiIcons"), color: const Color(0xFF5a5859),),
                                      new Text(travelers[index][4]+" €", style: new TextStyle(fontSize: 12.0,color: const Color(0xFF5A5958),),),
                                      new PetitVerticalDivider(),
                                      new Icon(const IconData(0xe801, fontFamily: "QepiIcons"), color: const Color(0xFF5a5859),),
                                      new Text(travelers[index][5], style: new TextStyle(fontSize: 12.0,color: const Color(0xFF5A5958),),),
                                    ],
                                  ),
                                ],

                              )


                            ),
                          ],
                        ),
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
