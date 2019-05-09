import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'package:path/path.dart' as path;
import 'package:image/image.dart' as img;

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Image Picker',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'ImagePicker'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  File imageFile;
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  static const baseUrl = "http://192.168.0.3:3000";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          buildPreviewImage(), 
        buildButtons() ],
      ),
    );
  }

  Widget buildPreviewImage() {
    return new Expanded(
      child: new Container(
        constraints: new BoxConstraints.expand(),
        child: new Card(
          elevation: 3.0,
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.all(new Radius.circular(4.0))),
          child: new Stack(
            children: <Widget>[
              imageFile == null
                  ? new Image.asset("assets/bg.png")
                  : new Image.file(imageFile),
              new Align(
                alignment: AlignmentDirectional.center,
                child: imageFile == null
                    ? new Text("No selected image",
                        style: Theme.of(context).textTheme.title)
                    : new Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildButtons() {
    return new Row(
      children: <Widget>[
        new IconButton(
          icon: Icon(Icons.camera),
          onPressed: _takePhoto,
        ),
        new IconButton(
          icon: Icon(Icons.file_upload),
          onPressed: _uploadImage,
        ),
        new IconButton(
          icon: Icon(Icons.photo_album),
          onPressed: _selectImage,
        ),
      ],
    );
  }

  void _showSnack(String text) {
    scaffoldKey.currentState?.showSnackBar(new SnackBar(
      content: new Text(text),
    ));
  }

  void _takePhoto() async {
    imageFile = await ImagePicker.pickImage(source: ImageSource.camera);
    setState(() {});
  }

  void _uploadImage() async {
    if (imageFile == null) {
      return _showSnack("Please select a image");
    }

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return new Center(
            child: new CircularProgressIndicator(
              
            ),
          );
        },
        barrierDismissible: false);

    try {
      final url = Uri.parse('$baseUrl/upload');
      final imgFile = path.basename(imageFile.path);
      final bytes = await compute(compress, imageFile.readAsBytesSync());

      var request = http.MultipartRequest('POST', url)
        ..files.add(new http.MultipartFile.fromBytes('image', bytes,
            filename: imgFile));

      var send = await request.send();
      var decode = await send.stream.bytesToString().then(json.decode);
      if(send.statusCode == HttpStatus.ok){
        _showSnack("Image uploaded / imageUrl = $baseUrl/${decode['path']}");
      }else{
        _showSnack("image no uploaded / ${decode['message']}");
      }
    } catch (e) {
      _showSnack("ERROR" + e);
    }
  }

  void _selectImage() async {
    imageFile = await ImagePicker.pickImage(source: ImageSource.gallery);
    setState(() {});
  }
}

List<int> compress(List<int> bytes) {
  var image = img.decodeImage(bytes);
  var rezise = img.copyResize(image, 480);
  return img.encodePng(rezise);
}
