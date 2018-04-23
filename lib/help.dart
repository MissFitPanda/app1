import 'package:flutter/material.dart';
import 'main.dart';
import 'package:app/settings.dart';
import './accounts.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/foundation.dart';
import 'settings.dart';



class help extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(title: new Text("Help & Feedback"),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.home),
            iconSize: 28.0,
            color: Colors.white,
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                  new MaterialPageRoute(
                      builder: (BuildContext context) => new settings()), (
                  Route route) => route == null);
            },
          ),
          new IconButton(
            icon: new Icon(Icons.arrow_back),
            iconSize: 28.0,
            color: Colors.white,
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                  new MaterialPageRoute(
                      builder: (BuildContext context) => new accounts()), (
                  Route route) => route == null);
            },
          ),

        ],
      ),

      body: new Container(
        child: new Card(
          child: new Column(
            children: <Widget>[
              new Text("SUPPORT CENTER",style: new TextStyle(fontWeight: FontWeight.bold,fontFamily: "Times Roman",decoration: TextDecoration.underline,
                fontSize: 20.0,),),
              new Text("",style: new TextStyle(fontSize: 20.0,),),
              new Text("Registered Office :  Bank Tower",style: new TextStyle(fontWeight: FontWeight.bold,fontFamily: "Rock Salt",
                fontSize: 17.0, ),),
              new Text("Near Chakli Circle, Old Padra Road, Vadodara 390007, Gujarat, India.",style: new TextStyle(fontWeight: FontWeight.bold,fontFamily: "Rock Salt",
                fontSize: 17.0,),),
              new Text("",style: new TextStyle(fontWeight: FontWeight.bold,fontFamily: "Rock Salt",
                fontSize: 20.0,),),
              new Text("Tel :+91-265-6722286",style: new TextStyle(fontWeight: FontWeight.bold,fontFamily: "Rock Salt",
                fontSize: 17.0,),),
              new Text("Fax : +91-22-26531122",style: new TextStyle(fontWeight: FontWeight.bold,fontFamily: "Rock Salt",
                fontSize: 17.0,),),


            ],
          ),
        ),
      ),

    );
  }
}
