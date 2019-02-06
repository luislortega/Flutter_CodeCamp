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

String my_Text = "Luis Leon";

void _changeText(){
  setState(() {
    if(my_Text.startsWith("L")){
      my_Text = "Welcome to HelloWorld app";
    }else{
      my_Text = "Luis Loen";
    }
  });
}

Widget _bodyWidget(){
  return new Container(
    padding: const EdgeInsets.all(8.0),
    child: new Center(
      child: Column(
        children: <Widget>[
          new Text(my_Text),
          new RaisedButton(
            child: new Text("Click me bitch"),
            onPressed: _changeText,
          )
        ],
      ),
    ),
  );
}

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Stateful app"),
      ),
      body: _bodyWidget(),
    );
  }
}


