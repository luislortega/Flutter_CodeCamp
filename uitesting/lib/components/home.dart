import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: new IconThemeData(color: Color(0xFF18D191)),
      ),
      body: _MainContent(),
    );
  }
}

class _MainContent extends StatelessWidget {
  Widget build(BuildContext context) {
    return new ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Container(
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Text(
                      "Explore",
                      style: TextStyle(fontSize: 30.0),
                      textAlign: TextAlign.left,
                    )
                  ],
                ),
                new SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: new Container(
                          height: 100.0,
                          decoration: BoxDecoration(
                              borderRadius: new BorderRadius.circular(5.0),
                              color: Color(0xFFFD7384)),
                          child: new Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              new Icon(
                                Icons.drive_eta,
                                color: Colors.white,
                              ),
                              new Text(
                                "Motor",
                                style: new TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                        child: new Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: new Container(
                        height: 100.0,
                        child: Column(
                          children: <Widget>[
                            Expanded(
                                child: Padding(
                              padding: EdgeInsets.only(bottom: 5.0),
                              child: Container(
                                decoration: new BoxDecoration(
                                    color: Color(0xFF18D191),
                                    borderRadius: BorderRadius.circular(5.0)),
                                child: new Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: new Icon(
                                        Icons.local_offer,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      "Classified",
                                      style: new TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            )),
                            Expanded(
                              child: Container(
                                decoration: new BoxDecoration(
                                    color: Color(0xFFFC7B4D),
                                    borderRadius: BorderRadius.circular(5.0)),
                                child: new Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: new Icon(
                                        Icons.beenhere,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      "Service",
                                      style: new TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )),
                    Expanded(
                      child: new Container(
                        height: 100.0,
                        child: Column(
                          children: <Widget>[
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 5.0),
                                child: Container(
                                decoration: new BoxDecoration(
                                    color: Color(0xFF53CEDB),
                                    borderRadius: BorderRadius.circular(5.0)),
                                child: new Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: new Icon(
                                        Icons.account_balance,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      "Properties",
                                      style: new TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                              ),
                            ),
                            Expanded(
                              child: Container(
                                decoration: new BoxDecoration(
                                    color: Color(0xFFF1B069),
                                    borderRadius: BorderRadius.circular(5.0)),
                                child: new Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: new Icon(
                                        Icons.art_track,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      "Jobs",
                                      style: new TextStyle(color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                )
                ,new SizedBox(
                  height: 20.0,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
