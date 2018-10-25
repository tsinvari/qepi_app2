import 'package:flutter/material.dart';
import './detail_traveler.dart';
import 'dart:async';

double _discreteValue = 0.0;

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
      width: 400.0,
      color: const Color(0xFFE6E6E6),
      margin: const EdgeInsets.only(left: 0.0, top: 15.0, bottom: 15.0),
    );
  }
}

class CreateParcelAddTraveler extends StatefulWidget{
  Create_Parcel_Add_Traveler createState()=> Create_Parcel_Add_Traveler();
}

class Create_Parcel_Add_Traveler extends  State<CreateParcelAddTraveler> {
    
  var travelers = [ ['Quentin LEGRAND', '1','Super experienced mentor  and some useful content posts that have really helped me develop my skills.','Paris', '7','5 Kg', '2/2/2018', 'https://miro.medium.com/fit/c/240/240/1*3zxB2OgCppepkCZbhQAEgA.jpeg'],
                  ['Ne Michel', '4', 'Super experienced mentor  and some useful content posts that have really helped me develop my skills.','Paris', '17','15 Kg', '2/2/2017', 'https://content-static.upwork.com/uploads/2014/10/02123010/profilephoto_goodcrop.jpg'],
                  ['Jenny Murillo', '2', 'Super experienced mentor  and some useful content posts that have really helped me develop my skills.','Paris', '17','15 Kg', '2/2/2017', 'https://devilsworkshop.org/files/2013/01/enlarged-facebook-profile-picture.jpg']];
            
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: const Color(0xFFF09731),
          title: new Row(
            children: <Widget>[
              new Icon(const IconData(0xe805, fontFamily: "QepiIcons"), color: Colors.white, size: 30.0,),
              new Text("  CREATE PARCEL", style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18.0),)
            ],
          ),
          iconTheme: new IconThemeData(color: Colors.white),
        ),
        backgroundColor: const Color(0xFFfcf9f4),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Card(
              child: new Container(
                padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10.0),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    new Container(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                        child: new Column(
                          children: <Widget>[
                            new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                new Text("La Paz",style: new TextStyle(color: const Color(0xFF5a5859), fontFamily: "Gibson",fontSize: 15.0,fontWeight: FontWeight.bold,),),
                                new Text("_____" ,style: new TextStyle(color: const Color(0xFF5a5859),),),
                                new Icon(const IconData(0xe80a, fontFamily: "QepiIcons"),),
                                new Text("_____",style: new TextStyle(color: const Color(0xFF5a5859),),),
                                new Text("Strasbourg",style: new TextStyle(color: const Color(0xFF5a5859), fontFamily: "Gibson",fontSize: 15.0,fontWeight: FontWeight.bold,),),
                              ],
                            ),
                            ]
                        ),
                      ),
                    new Container(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                        child: new Column(
                          children: <Widget>[
                            new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: <Widget>[
                                new Icon(const IconData(0xe800, fontFamily: "QepiIcons"), color: const Color(0xFF5a5859),),
                                new Text(" Kg     ", style: new TextStyle(fontSize: 14.0,color: const Color(0xFF5A5958),),),
                                new Icon(const IconData(0xe801, fontFamily: "QepiIcons"), color: const Color(0xFF5a5859),),
                                new Text(" Items", style: new TextStyle(fontSize: 14.0,color: const Color(0xFF5A5958),),),
                                new Icon(const IconData(0xe806, fontFamily: "QepiIcons"), color: const Color(0xFF5a5859),),
                                new Text(" €     ", style: new TextStyle(fontSize: 14.0,color: const Color(0xFF5A5958),),),
                              ],
                              ),
                            ]
                        ),
                      ),
                       new Container(
                        padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                        child: new Center(
                          child: new Text ("COST TO SEND 36.00 €", style: new TextStyle(fontSize: 17.0, fontFamily: "Gibson", color: const Color(0xFF5a5859), fontWeight: FontWeight.bold,),),
                        ),
                      ),
                    ],
                  ),
              ),
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
                                    child: Image.network(travelers[index][7].toString(),
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
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}