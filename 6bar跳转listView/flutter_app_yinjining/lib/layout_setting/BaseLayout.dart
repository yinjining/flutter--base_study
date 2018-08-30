import 'package:flutter/material.dart';
import 'package:flutter_app_yinjining/layout_setting/Demo1.dart';

// 资讯列表页面
class BaseLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new PageWidget(),
    );
  }
}

class PageWidget extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new PageState();
  }
}

class PageState extends State<PageWidget> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Center(
        child: new RaisedButton(
          onPressed: _pushPage,
          child: new Text("跳转"),
        ),
      ),
    );
  }
  _pushPage(){
//    Navigator.of(widget.parentContext).pushNamed("/demo1");
    Navigator.of(context).push(new MaterialPageRoute(
      builder: (context) {
      return new Demo1();
    },
    ));
  }
}