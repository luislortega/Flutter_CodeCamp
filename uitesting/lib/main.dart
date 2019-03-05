import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Testing UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  Widget build(BuildContext context){
    return new Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //ICONS
            new Stack(
              alignment: Alignment.center,
              children: <Widget>[
                //icon 1
                new Container(
                  height: 60.0,
                  width: 60.0,
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(50.0),
                    color: new Color(0xFFFC6A7F)
                  ),
                  child: new Icon(Icons.local_offer, color: Colors.white,),
                ),
                //Icon 2
                new Container(
                  margin: new EdgeInsets.only(right: 50.0, top: 50.00),
                  height: 60.0,
                  width: 60.0,
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(50.0),
                    color: new Color(0xFF18D191)
                  ),
                  child: new Icon(Icons.home, color: Colors.white,),
                ),
                //Icon 3
                new Container(
                  margin: new EdgeInsets.only(left: 50.0, top: 50.00),
                  height: 60.0,
                  width: 60.0,
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(50.0),
                    color: new Color(0xFFFFCE56 )
                  ),
                  child: new Icon(Icons.local_car_wash, color: Colors.white,),
                ),
                //Icon 4
                new Container(
                  margin: new EdgeInsets.only(left: 90.0),
                  height: 60.0,
                  width: 60.0,
                  decoration: new BoxDecoration(
                    borderRadius: new BorderRadius.circular(50.0),
                    color: new Color(0xFF45E0EC)
                  ),
                  child: new Icon(Icons.place, color: Colors.white,),
                )
              ],
            )
            ,
            //TEXT
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 40.0, bottom: 80.0),
                  child: new Text("Luis Ortega", style: new TextStyle(fontSize: 30.0)),
                )
              ],
            )          
            ,
            //Main button
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 10.0, top: 10.0),
                    child: new Container(
                      alignment: Alignment.center,
                      height: 60.0,
                      decoration: new BoxDecoration(color: Color(0xFF18D191), borderRadius: new BorderRadius.circular(10.0)),
                      child: new Text("Sig in with email", style: new TextStyle(fontSize:20.0, color: Colors.white)),
                    ),
                  ),
                )
              ],
            )
            ,
            //Secondary buttons
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 5.0, top: 10.0),
                    child: new Container(
                      alignment: Alignment.center,
                      height: 60.0,
                      decoration: new BoxDecoration(color: Color(0xFFDF513B), borderRadius: new BorderRadius.circular(10.0)),
                      child: new Text("Facebook", style: new TextStyle(fontSize:20.0, color: Colors.white)),
                    ),
                  ),
                )
                ,
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 10.0, top: 10.0),
                    child: new Container(
                      alignment: Alignment.center,
                      height: 60.0,
                      decoration: new BoxDecoration(color: Color(0xFF4364A1), borderRadius: new BorderRadius.circular(10.0)),
                      child: new Text("GMAIL", style: new TextStyle(fontSize:20.0, color: Colors.white)),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
