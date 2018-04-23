import 'package:flutter/material.dart';
import 'main.dart';
import 'package:app/fundtransfer.dart';
import 'package:app/accounts.dart';

class settings extends StatefulWidget {
  @override
  _settingsState createState() => new _settingsState();
}

class _settingsState extends State<settings> {


  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("Welcome to your profile"),
          backgroundColor: new Color(0xFF008000),
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.exit_to_app), onPressed: () {
              Navigator.of(context).pushAndRemoveUntil
                (new MaterialPageRoute(builder:
                  (BuildContext context) => new LoginPage()),
                      (Route route) => route == null);
            }),

          ],

        ),
        body:new Stack(fit: StackFit.expand, children: <Widget>[
          new Image(
            image: new AssetImage("asset/image.jpg"),
            fit: BoxFit.cover,
            colorBlendMode: BlendMode.lighten,
            color: Colors.black87,
          ),
          new TheGridView().build(context),
        ]),
      ),
    );
  }
}

onPressedFunction(context, pageClasses) {
  Navigator.of(context).push
    (new MaterialPageRoute
    (builder: (BuildContext context) => pageClasses));

}

class TheGridView{
  GestureDetector makeGridCell(String name, IconData icon,Function onPressedFunction, BuildContext context, Widget pageClasses){
    return new GestureDetector(
      onTap: () {
        onPressedFunction(context, pageClasses);
      },
      child:  new Card(
      elevation: 4.0,
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        verticalDirection: VerticalDirection.down,
        children: <Widget>[
          new Center(child: new Icon(icon,size:100.0,color: Colors.green)),
          new Center(child:new Text(name,style: new TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold))),
//          new Center(child: new FlatButton(onPressed: () { onPressedFunction(context); }, child:new Text(name,style: new TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold)))),
        ],
      ),
      ),
    );
  }

  GridView build(context){
    return new GridView.count(
        primary: true,
        //padding: EdgeInsets.all(1.0),
        crossAxisCount: 2,
        childAspectRatio: 1.0,
        mainAxisSpacing: 2.0,
        crossAxisSpacing: 2.0,
        children: <Widget>[
          makeGridCell("Accounts & Summary", Icons.people, onPressedFunction, context, new accounts()),
          makeGridCell("Fund Transfer", Icons.swap_horiz, onPressedFunction, context, new fundtransfer()),
//          makeGridCell("Cards", Icons.chat_bubble, onPressedFunction, context, new cards),
//          makeGridCell("Bills & Payments", Icons.style, onPressedFunction, context),
//          makeGridCell("Loans", Icons.local_activity, onPressedFunction, context),
//          makeGridCell("More", Icons.label_important, onPressedFunction, context),

        ]
    );
  }
}