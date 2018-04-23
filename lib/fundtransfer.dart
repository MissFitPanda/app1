import 'package:flutter/material.dart';
import 'main.dart';
import 'package:app/settings.dart';
import 'package:app/firstpage.dart'as first;
import 'package:app/secondpage.dart' as second;

class fundtransfer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new DefaultTabController(
        length: 3,
        child: new Scaffold(
          appBar: new AppBar(
            bottom: new TabBar(
              tabs: [
                new Tab(child:new Text("Self"),icon: new Icon(Icons.arrow_downward)),
                new Tab(child:new Text("Other Banks"),icon: new Icon(Icons.arrow_upward)),
              ],
            ),
            title: new Text('Fund Transfer'),
            backgroundColor: new Color(0xFF008000),
            actions: <Widget>[
              new IconButton(icon: new Icon(Icons.exit_to_app), onPressed: () {
                Navigator.of(context).pushAndRemoveUntil
                  (new MaterialPageRoute(builder:
                    (BuildContext context) => new LoginPage()),
                        (Route route) => route == null);
              }),
              new IconButton(icon: new Icon(Icons.home), onPressed: () {
                Navigator.of(context).pushAndRemoveUntil
                  (new MaterialPageRoute(builder:
                    (BuildContext context) => new settings()),
                        (Route route) => route == null);
              }),

            ],
          ),
          body:new Stack(fit: StackFit.expand, children: <Widget>[
          new Image(
          image: new AssetImage("asset/image1.jpg"),
          fit: BoxFit.cover,
          colorBlendMode: BlendMode.darken,
          color: Colors.black87,
        ),
          new TabBarView(
            children: [
              new first.FirstPage(),
               new second.SecondPage(),


            ],
          ),
        ],
          ),
        ),
      ),
    );
  }
}