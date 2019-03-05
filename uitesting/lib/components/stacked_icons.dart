import 'package:flutter/material.dart';

class StackedIcons extends StatelessWidget {
  Widget build(BuildContext context) {
    return new Stack(
      alignment: Alignment.center,
      children: <Widget>[
        //icon 1
        new Container(
          height: 60.0,
          width: 60.0,
          decoration: new BoxDecoration(
              borderRadius: new BorderRadius.circular(50.0),
              color: new Color(0xFFFC6A7F)),
          child: new Icon(
            Icons.local_offer,
            color: Colors.white,
          ),
        ),
        //Icon 2
        new Container(
          margin: new EdgeInsets.only(right: 50.0, top: 50.00),
          height: 60.0,
          width: 60.0,
          decoration: new BoxDecoration(
              borderRadius: new BorderRadius.circular(50.0),
              color: new Color(0xFF18D191)),
          child: new Icon(
            Icons.home,
            color: Colors.white,
          ),
        ),
        //Icon 3
        new Container(
          margin: new EdgeInsets.only(left: 50.0, top: 50.00),
          height: 60.0,
          width: 60.0,
          decoration: new BoxDecoration(
              borderRadius: new BorderRadius.circular(50.0),
              color: new Color(0xFFFFCE56)),
          child: new Icon(
            Icons.local_car_wash,
            color: Colors.white,
          ),
        ),
        //Icon 4
        new Container(
          margin: new EdgeInsets.only(left: 90.0),
          height: 60.0,
          width: 60.0,
          decoration: new BoxDecoration(
              borderRadius: new BorderRadius.circular(50.0),
              color: new Color(0xFF45E0EC)),
          child: new Icon(
            Icons.place,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
