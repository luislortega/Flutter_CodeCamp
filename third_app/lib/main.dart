import 'package:flutter/material.dart';

void main(){
  runApp(new MyApp());
}

//Stateless container 
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "third_app",
      home: new HomePage(),
    );
  }
}

//Stateful container than call the page state
class HomePage extends StatefulWidget{
  _HomePageSate createState() => new _HomePageSate();
}

class _HomePageSate extends State<HomePage>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Stateful app"),
      ),
      body: new Center(
        child: new Text(
          "Hello world app stateful"
        ),
      ),
    );
  }
}


