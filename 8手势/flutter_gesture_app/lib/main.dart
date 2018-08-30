import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or press Run > Flutter Hot Reload in IntelliJ). Notice that the
        // counter didn't reset back to zero; the application is not restarted.
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
  _buttonShow() {
    return RaisedButton(
      onPressed: () {
        print('我是button，我被点击了');
      },
      child: Text('button'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: new Text(widget.title),
        ),
        body:
//        _buttonShow()
            new GestureDetector(
                onTap: () {
                  print('我是手势，我点击了一下');
                },
                child: new Stack(
                  children: <Widget>[
                    new Positioned(
                      left:100.0,
                      top: 100.0,
                      bottom: 100.0,
                      right: 100.0,
                      child: Container(
                        color: Colors.red,
                      ),
                    )
                  ],
                )

//      new Container(
//        color:Colors.red,
//      ),

                ));
  }
}
