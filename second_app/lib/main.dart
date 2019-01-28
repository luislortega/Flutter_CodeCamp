/**
 * Concept of Stateless and Stateful widget by Luis Leon
 * 
 * Some widgets are stateful and some are statelesss
 * If a widget changes-the user interact with it- it's a stateful
 * A widget's state is stored i a State Object, separating the sidget's state from its apparance
 * when the widget's state change, the object call setState()
 * 
 * A stateless has no internal state to manage like: 
 *  Icon, iconButton, and text for example
 * 
 * The stateful widget is dynamic
 */
import 'package:flutter/material.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title:  "MyApp",
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text("StateLess app"),
        ),
        body: new Center(
          child: new Text("Hello world"),
        ),
      ),
    );
  }
  
}