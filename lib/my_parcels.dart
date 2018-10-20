import 'package:flutter/material.dart';
import './create_parcel.dart';

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

class petitVerticalDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 20.0,
      width: 0.6,
      color: const Color(0xFFF09731),
      margin: const EdgeInsets.only(left: 10.0, right: 25.0),
    );
  }
}

class Parcels extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new Center(
              child: new Container(
                padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 3.0),
                child: new Material(
                  child: new InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => CreateParcel()));
                    },
                    child: new Container(
                      //width: 100.0,
                      height: 80.0,
                      decoration: new BoxDecoration(
                        //color: const Color(0xFFffd85f),
                        gradient: new LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          //stops: [0.1, 0.5, 0.7, 0.9],
                          colors: [
                            const Color(0xFFffd85f),
                            const Color(0xFFF09731),
                          ],
                        ),
                        border: new Border.all(color: Colors.white, width: 2.0),
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                      child: new Center(
                        child: new Text('CREATE PARCEL',
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
              //search
              new Container(
               /* height: 50.0,
                width: 400.0,*/
               padding: const EdgeInsets.symmetric(horizontal: 15.0),
               child: new Row(
                 //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: <Widget>[
                   new Flexible(
                     child:
                     new TextFormField(
                       decoration: new InputDecoration(
                           hintText: "Search",
                           hintStyle: new TextStyle(color: const Color(0xFFB9B9B9),fontFamily: "Gibson"),
                           border: InputBorder.none,
                           //labelText: "Search",
                           //labelStyle: new TextStyle(color: const Color(0xFFB9B9B9),fontFamily: "Gibson"),
                       ),
                       style: new TextStyle(fontFamily: "Gibson", color: const Color(0xFF5A5958),),
                     ),
                   ),
                   new Icon(Icons.search, color: const Color(0xFFB9B9B9)),
                 ],
               )
                ),
            new Expanded(
              flex: 20,
              child: new Container(
                padding: const EdgeInsets.symmetric(horizontal: 3.0),
                color: const Color(0xFFfcf9f4),
                child : new ListView.builder(
                  itemExtent: 110.0,
                  itemCount: 5,
                  itemBuilder: (BuildContext context, int index){
                    return new Card(
                      child: new ListTile(
                        onTap: null,
                        title: new Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              mainAxisSize: MainAxisSize.max,
                              children: <Widget>[
                                new Text("La Paz ",style: new TextStyle(color: const Color(0xFF5A5958), fontFamily: "Gibson",fontSize: 15.0,fontWeight: FontWeight.bold,),),
                                new Text("___" ,style: new TextStyle(color: const Color(0xFF5A5958),),),
                                new Icon(const IconData(0xe80a, fontFamily: "QepiIcons"),),
                                new Text("___",style: new TextStyle(color: const Color(0xFF5A5958),),),
                                new Text(" Strasbourg",style: new TextStyle(color: const Color(0xFF5A5958), fontFamily: "Gibson",fontSize: 15.0,fontWeight: FontWeight.bold,),),
                              ],
                            ),
                          new Container(
                            padding: const EdgeInsets.only(bottom: 7.0),
                            child:
                              new Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                new Icon(const IconData(0xe800, fontFamily: "QepiIcons"), color: const Color(0xFF5a5859),),
                                new Text("5 Kg",style: new TextStyle(color: const Color(0xFF5A5958), fontFamily: "Gibson",fontSize: 12.0,),),
                                new petitVerticalDivider(),
                                new Icon(const IconData(0xe803, fontFamily: "QepiIcons"), color: const Color(0xFF5a5859),),
                                new Text("7",style: new TextStyle(color: const Color(0xFF5A5958), fontFamily: "Gibson",fontSize: 12.0,),),
                                new petitVerticalDivider(),
                                new Icon(const IconData(0xe801, fontFamily: "QepiIcons"), color: const Color(0xFF5a5859),),
                                new Text("3/Nov/18",style: new TextStyle(color: const Color(0xFF5A5958), fontFamily: "Gibson",fontSize: 12.0,),),
                              ],
                            ),
                          ),
                          ],
                        ),
                        trailing: new Row(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            new VerticalDivider(),
                            new Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                new Icon(const IconData(0xe80b, fontFamily: "QepiIcons"), color: const Color(0xFF5A5958), size: 30.0,),
                                new Text("Draft",style: new TextStyle(color: const Color(0xFF5A5958), fontFamily: "Gibson",fontSize: 13.0,),),
                              ],
                            ),
                            new Icon(Icons.arrow_right, color: const Color(0xFFF09731),),
                          ],
                        )
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
