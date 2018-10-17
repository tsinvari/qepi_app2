import 'package:flutter/material.dart';
import './my_parcels.dart' as parcelsview;
import './my_trips.dart' as tripsview;
import './search_traveller.dart' as searchview;


void main(){
  runApp(new MaterialApp(
    title: "Tab Bar",
    home: new Home(),
  ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{

  TabController controller;

  @override
  void initState() {
    controller = TabController(vsync: this, length: 4);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    var drawer = new Drawer();

    return new Scaffold(
      drawer: drawer,
    appBar: new AppBar(
      //backgroundColor: const Color(0xFFf0a043),
      backgroundColor: Colors.white,
      title: new Text("Q'epi",
        style: TextStyle(fontWeight: FontWeight.bold, color: const Color(0xFFF09731)),),
      iconTheme: new IconThemeData(color: const Color(0xFFF09731)),
      bottom: new TabBar(
        controller: controller,
        labelColor: const Color(0xFFF09731),
        labelStyle: TextStyle(fontWeight: FontWeight.bold),
        indicatorColor: const Color(0xFFF09731),
        tabs: <Widget>[
          new Tab(text: "My Parcels",),
          new Tab(text: "My Trips",),
          new Tab(text: "Search Traveler",),
        ],
      ),
    ),

      body: new TabBarView(
      controller: controller,
        children: <Widget>[
          new parcelsview.Parcels(),
          new tripsview.Trips(),
          new searchview.Search(),
        ],
      ),

    );
}

}