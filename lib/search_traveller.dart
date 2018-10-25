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
      margin: const EdgeInsets.only(left: 15.0, right: 15.0),
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

var x = "";
var value = "Month";

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

  final fromControllerSearch = TextEditingController();
  final toControllerSearch = TextEditingController();

  var travelers = [ ['Quentin LEGRAND', '1','Super experienced mentor  and some useful content posts that have really helped me develop my skills.', '7','5 Kg', '2/2/2018', 'https://miro.medium.com/fit/c/240/240/1*3zxB2OgCppepkCZbhQAEgA.jpeg'],
                  ['Ne Michel', '4', 'Super experienced mentor  and some useful content posts that have really helped me develop my skills.','Paris', '17','15 Kg', '2/2/2017', 'https://content-static.upwork.com/uploads/2014/10/02123010/profilephoto_goodcrop.jpg'],
                  ['Jenny Murillo', '2', 'Super experienced mentor  and some useful content posts that have really helped me develop my skills.','Paris', '17','15 Kg', '2/2/2017', 'https://devilsworkshop.org/files/2013/01/enlarged-facebook-profile-picture.jpg']];
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
                  //trailing: new Icon(Icons.search, color: Colors.white, ), //change icon
                  title: new Row (
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
                                      hintStyle: new TextStyle(color: Colors.white,fontFamily: "Gibson", fontWeight: FontWeight.normal,),
                                      border: InputBorder.none,
                                    ),
                                    controller: fromControllerSearch,
                                    style: new TextStyle(fontFamily: "Gibson", fontSize: 16.0, color: Colors.white, fontWeight: FontWeight.bold,),
                                  ),
                                ),
                                new IconButton(icon: new Icon(Icons.close, color: Colors.white), onPressed: (){setState((){fromControllerSearch.text = "";});})
                              ],
                            ),
                            new HorizontalDivider(),
                            new Row(
                              children: <Widget>[
                                new Flexible(
                                  child:new TextFormField(
                                    decoration: new InputDecoration(
                                      hintText: "To",
                                      hintStyle: new TextStyle(color: Colors.white,fontFamily: "Gibson", fontWeight: FontWeight.normal,),
                                      border: InputBorder.none,
                                    ),
                                    controller: toControllerSearch,
                                    style: new TextStyle(fontFamily: "Gibson", fontSize: 16.0, color: Colors.white, fontWeight: FontWeight.bold,),
                                  ),
                                ),
                                new IconButton(icon: new Icon(Icons.close, color: Colors.white), onPressed: (){setState((){toControllerSearch.text = "";});})
                              ],
                            ),
                          ],
                        ),
                      ),
                      new IconButton(icon: new Icon(Icons.swap_vertical_circle, color: Colors.white,), onPressed: (){ setState(() { x = fromControllerSearch.text; fromControllerSearch.text = toControllerSearch.text ; toControllerSearch.text = x;});}),
                    ],
                  ),
                  children: <Widget>[
                    new Container(
                      padding: const EdgeInsets.only(left: 18.0, bottom: 10.0),
                      child:
                          new Row(
                            children: <Widget>[
                              //new Text("Month", style: new TextStyle(color: Colors.white, fontFamily: "Gibson",fontSize: 16.0),),
                              //new IconButton(icon: new Icon(Icons.arrow_drop_down, color: Colors.white,), onPressed: (){_selectDate(context);}),
                              new Column(
                                children: <Widget>[
                                  new DropdownButton<String>(
                                    hint: new Text(value, style: new TextStyle(color: Colors.white, fontFamily: "Gibson",fontSize: 16.0),),
                                    items: <String>['January', 'February', 'March', 'April', 'May', 'Jun', 'July', 'August','September','October', 'November','December'].map((String value) {
                                      return new DropdownMenuItem<String>(
                                        value: value,
                                        child: new Text(value, style: new TextStyle(color: const Color(0xFF5A5958), fontFamily: "Gibson",fontSize: 16.0),),
                                      );
                                    }).toList(),
                                    style: new TextStyle(
                                        fontSize: 15.0,
                                        fontWeight: FontWeight.normal,
                                        fontFamily: "Gibson",
                                        color: Colors.white,),
                                    iconSize: 30.0,
                                    onChanged: (String selectedMonth) {
                                      //print("Selected city $selectedMonth, we are going to refresh the UI");
                                      setState(() {
                                        value = selectedMonth;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                    ),
                    new Container(
                      //width: 550.0,
                      padding: const EdgeInsets.only(left: 18.0, bottom: 10.0),
                      child: new Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              new Text("Weigth", style: new TextStyle(color: Colors.white, fontFamily: "Gibson",fontSize: 16.0),),
                              //new Slider(value: 5.0, min: 0.0, max: 10.0, divisions: 10, onChanged: null, activeColor: Colors.white, inactiveColor: Colors.white,)
                      /*SliderTheme(
                        data: theme.sliderTheme.copyWith(
                          activeTrackColor: Colors.deepPurple,
                          inactiveTrackColor: Colors.black26,
                          activeTickMarkColor: Colors.white70,
                          inactiveTickMarkColor: Colors.black,
                          overlayColor: Colors.black12,
                          thumbColor: Colors.deepPurple,
                          valueIndicatorColor: Colors.deepPurpleAccent,
                          thumbShape: _CustomThumbShape(),
                          valueIndicatorShape: _CustomValueIndicatorShape(),
                          valueIndicatorTextStyle: theme.accentTextTheme.body2.copyWith(color: Colors.black87),
                        ),
                        child: */new Slider(
                                value: _discreteValue,
                                min: 0.0,
                                max: 5000.0,
                                activeColor: Colors.white,
                                inactiveColor: const Color(0xFFF8BA73),
                                divisions: 100,
                                label: '${_discreteValue.round()}',
                                onChanged: (double value) {
                                  setState(() {
                                    _discreteValue = value;
                                  });
                                },
                              ),
                      //),
                              new Text(_discreteValue.round().toString(), style: new TextStyle(color: Colors.white, fontFamily: "Gibson",fontSize: 16.0),textAlign: TextAlign.right,),
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
                //padding: const EdgeInsets.symmetric(horizontal: 3.0, ),
                color: const Color(0xFFfcf9f4),
                child: new ListView.builder(
                  itemCount: travelers.length,
                  itemExtent: 160.0,
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
                                  new Container(
                                    decoration: new BoxDecoration(
                                        border: new Border.all(color: const Color(0xFFF09731), width: 4.0)
                                    ),
                                    height: 100.0,
                                    width: 90.0,
                                    child: Image.network(travelers[index][6].toString(),
                                        fit: BoxFit.cover
                                    ),
                                  ),
                                title: new Text(travelers[index][0], style: new TextStyle(fontSize: 14.0, fontFamily: "Gibson",fontWeight: FontWeight.bold,),),
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
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: <Widget>[
                                      new Icon(const IconData(0xe800, fontFamily: "QepiIcons"), color: const Color(0xFF5a5859),),
                                      new Text(travelers[index][3]+" Kg", style: new TextStyle(fontSize: 12.0, color: const Color(0xFF5A5958),),),
                                      new PetitVerticalDivider(),
                                      new Icon(const IconData(0xe806, fontFamily: "QepiIcons"), color: const Color(0xFF5a5859),),
                                      new Text(travelers[index][4]+" €", style: new TextStyle(fontSize: 12.0, color: const Color(0xFF5A5958),),),
                                      new PetitVerticalDivider(),
                                      new Icon(const IconData(0xe801, fontFamily: "QepiIcons"), color: const Color(0xFF5a5859),),
                                      new Text(travelers[index][5], style: new TextStyle(fontSize: 12.0, color: const Color(0xFF5A5958),),),
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
