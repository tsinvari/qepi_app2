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
    return new Scaffold(
    appBar: new AppBar(
      backgroundColor: Colors.amber,
      title: new Text("Q'epi",),
      bottom: new TabBar(
        controller: controller,
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