import 'package:flutter/material.dart';


class JNContainer extends StatelessWidget{
  JNContainer({Key key, this.titles}) : super(key: key);
  final String titles;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
//      title: 'container',
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: ContainerAppPage(),
      ),
    );
  }
}

class ContainerAppPage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ContainerAppState();
  }
}

class _ContainerAppState extends State<ContainerAppPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.red,
        title: new Text("demo1"),
      ),
      body: new Center(child: new Text("haha"),),
    );

//    return Scaffold(
//      appBar: AppBar(
////        leading:new IconButton(
////            icon: new Icon(Icons.keyboard_arrow_left),
////            onPressed: (){
//////              Navigator.of(context).pop();
////              Navigator.pop(context);
////            }),
//        title: Text("我是Container"),
//      ),
//      body: Center(
//        child: Container(
//
//        ),
//      ),
//    );
  }
}