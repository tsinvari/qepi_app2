import 'package:flutter/material.dart';
import 'dart:async';

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

class DetailTraveler extends StatefulWidget{
  final List value;
  @override
  DetailTraveler({Key key, this.value,}) : super (key: key);
  Detail_Traveler createState()=> Detail_Traveler();
}

class Detail_Traveler extends State<DetailTraveler>{

  var travelDe = [];
  void initState() {
    super.initState();
    var result = widget.value;
    //  var result1 = '${widget.value}';
    if (result.length > 0)
    {
      travelDe = result;
    }

  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: const Color(0xFFF09731),
          title: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              new Text("La Paz",style: new TextStyle(color: Colors.white, fontFamily: "Gibson",fontSize: 15.0,fontWeight: FontWeight.bold,),),
              new Text("_____" ,style: new TextStyle(color: Colors.white,),),
              new Icon(const IconData(0xe80a, fontFamily: "QepiIcons"),),
              new Text("_____",style: new TextStyle(color: Colors.white,),),
              new Text("Strasbourg",style: new TextStyle(color: Colors.white, fontFamily: "Gibson",fontSize: 15.0,fontWeight: FontWeight.bold,),),
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
                padding: const EdgeInsets.only(left: 18.0, bottom: 15.0, top: 35.0, right: 18.0),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    new ListTile(
                        contentPadding: const EdgeInsets.only(left: 0.0, bottom: 15.0, right: 18.0),
                        leading: new Container(
                            height: 100.0,
                            width: 100.0,
                            decoration: new BoxDecoration(
                                border: new Border.all(color: const Color(0xFFFBDDBB))
                            ),
                            //padding: EdgeInsets.only(bottom: 15.0, top: 15.0, left: 15.0, right: 15.0),
                            child: //new Icon(Icons.person, color: const Color(0xFF5a5859), size: 25.0,)
                            Image.network(
                                      travelDe[2],
                                        fit: BoxFit.cover
                                    ),
                        ),
                        title: new Text(travelDe[0], style: new TextStyle(fontSize: 14.0,fontFamily: "Gibson",fontWeight: FontWeight.bold,),),
                        subtitle: new Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            new Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: List.generate(5, (i){
                                  if (i < int.tryParse(travelDe[1])) {
                                    return new Icon(Icons.star, color: const Color(0xFFF1BD79), size: 20.0,);
                                  } else {
                                    return new Icon(Icons.star_border, color: const Color(0xFFF1BD79), size: 20.0,);
                                  }
                                })
                            ),
                            new Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                new Icon(const IconData(0xe801, fontFamily: "QepiIcons"), color: const Color(0xFF5a5859),),
                                new Container(
                                  padding: const EdgeInsets.only(top: 10.0),
                                  child: new Row(
                                    children: <Widget>[
                                      new Column(
                                        children: <Widget>[
                                          new Text(" Leaves", style: new TextStyle(fontSize: 14.0,color: const Color(0xFF5A5958), fontWeight: FontWeight.bold),),
                                          new Text(" Arrives", style: new TextStyle(fontSize: 14.0,color: const Color(0xFF5A5958), fontWeight: FontWeight.bold),),
                                        ],
                                      ),
                                      new Column(
                                        children: <Widget>[
                                          new Text(" LP 01/11", style: new TextStyle(fontSize: 14.0,color: const Color(0xFF5A5958), fontWeight: FontWeight.normal),),
                                          new Text(" St 03/11", style: new TextStyle(fontSize: 14.0,color: const Color(0xFF5A5958), fontWeight: FontWeight.normal),),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                    ),
                    new Container(
                      padding: const EdgeInsets.only(top: 5.0, bottom: 10.0),
                      child: new Text("Hola, soy "+travelDe[0]+", soy boliviano y vivo en Strasbourg desde hace un anio porque estoy estudiando en la UNISTRA. Voy a Bolivia eventualmente a visitar a mi familia. Me encantará llevar tu paquete.",
                        style: new TextStyle(fontSize: 14.0,color: const Color(0xFF5A5958),),),
                    ),
                    new Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        new Icon(const IconData(0xe800, fontFamily: "QepiIcons"), color: const Color(0xFF5a5859),),
                        new Text("5"+" Kg", style: new TextStyle(fontSize: 12.0,color: const Color(0xFF5A5958),),),
                        new PetitVerticalDivider(),
                        new Icon(const IconData(0xe806, fontFamily: "QepiIcons"), color: const Color(0xFF5a5859),),
                        new Text(" 100.00"+" €", style: new TextStyle(fontSize: 12.0,color: const Color(0xFF5A5958),),),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            new Card(
              child: new Container(
                padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 18.0),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Text("Reviews", style: new TextStyle(fontSize: 14.0, fontFamily: "Gibson", color: const Color(0xFFB9B9B9), fontWeight: FontWeight.normal,),),
                    new Container(
                      padding: const EdgeInsets.only(top: 10.0, right: 0.0, left: 5.0),
                      child: new Row(
                        children: <Widget>[
                          new Flexible(
                            child: new Text(travelDe[0]+" llevo mi paquete de Strasbourg a La Paz., algunas cosas para la familia. Todo llego conforme y puntual",
                              style: TextStyle(color: const Color(0xFF5A5859),),
                              maxLines: 5,
                              overflow: TextOverflow.ellipsis,
                              softWrap: true,
                            ),
                          ),
                          new Container(
                              height: 80.0,
                              width: 80.0,
                              decoration: new BoxDecoration(
                                  border: new Border.all(color: const Color(0xFFFBDDBB))
                              ),
                              child: //new Icon(Icons.person, color: const Color(0xFF5a5859), size: 25.0,)
                              Image.network(
                                      'https://content-static.upwork.com/uploads/2014/10/02123010/profilephoto_goodcrop.jpg',
                                        fit: BoxFit.cover
                                    ),
                          ),
                        ],
                      ),
                    ),
                    new HorizontalDivider(),
                  ],
                ),
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
                          child: new Text('CREATE Parcel with this Traveler',
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
      ),
    );
  }
}