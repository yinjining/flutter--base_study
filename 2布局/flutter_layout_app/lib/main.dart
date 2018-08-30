import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
//  _paddingWidget(){
//    return new Container(
//      padding:EdgeInsets.fromLTRB(100.0, 150.0, 50.0, 400.0),
//      color: Colors.red,
//      child: new Container(
//        color: Colors.yellow,
//      ),
//    );
//  }

//  _centerWidget(){
//    return new Container(
//      child: new Center(
//        child: Text('我是一个text'),
//      ),
//    );
//  }

  _rowOrColumnWidget() {
    return new Container(
      padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          new Expanded(
              child: RaisedButton(
                onPressed: _buttonClick,
                child: new Text(
                  'Raised Button',
                ),
                color: Colors.red,
              )),
          new Expanded(
              child: CupertinoButton(
                  padding: EdgeInsets.all(0.0),
                  child: Text("i"),
                  color: Colors.yellow,
                  onPressed: _buttonClick)),
          new Expanded(
              child: Container(
                color: Colors.blue,
                padding: EdgeInsets.fromLTRB(30.0, 0.0, 30.0, 0.0),
                child: RaisedButton(
                  onPressed: _buttonClick,
                  color: Colors.red,
                ),
              ))
        ],
      ),
    );
  }

  _stackWidget() {
    return new Stack(
      children: <Widget>[
        new Positioned(
            left: 50.0,
            top: 100.0,
            width: 100.0,
            height: 10.0,
            child: Text("1234")),
      ],
    );
  }

  _buttonClick() => print(123);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: new Text(widget.title),
        ),
        body: _stackWidget());
  }
}
