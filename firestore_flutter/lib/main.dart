import 'package:flutter/material.dart';
import 'crud_sample.dart';


void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: new WallScreen(analytics: analytics, observer: observer),
      home: new CrudSample(),
    );
  }
}