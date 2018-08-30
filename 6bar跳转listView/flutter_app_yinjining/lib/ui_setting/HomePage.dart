import 'package:flutter/material.dart';
import 'package:flutter_app_yinjining/ui_setting/JNContainer.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'UI首页讲解',
      home: HomePagePage(),
//      routes:<String,WidgetBuilder> {
//        '/containerApp':(BuildContext context) => new ContainerApp(titles:"123")
//      },
    );
  }
}

class HomePagePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomePagePageState();
  }
}

class _HomePagePageState extends State<HomePagePage> {
  List nameArr = [
    'Container-->view',
    'Text-->label',
    'RaisedButton-->button',
    'fieldText',
    'textView',
    'ListView-->,tableView,collectionView',
    'scroller-->scroller,boxScroller'
        'Image-->imageView',
    'button',
    'fieldText',
    'textView',
    'Container',
    'label',
    'button',
    'fieldText',
    'textView',
    'Container',
    'label',
    'button',
    'fieldText',
    'textView'
  ];

  List<Widget> widgets = [];

  @override
  void initState() {
    super.initState();
    for (int i = 0; i < nameArr.length; i++) {
      widgets.add(getRow(i));
    }
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor:Colors.red,
      appBar: new AppBar(//
        leading: new IconButton(
          icon: new Icon(Icons.menu,
            color:Colors.white,
          ),
          tooltip: '抽屉侧滑',
          onPressed: null,
        ),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.search,
              color:Colors.white,
            ),
            tooltip: '搜索',
            onPressed: null,
          ),
        ],

        backgroundColor:const Color(0xFF63CA6C),

        // 设置AppBar标题
        title: new Text('UI首页',
          // 设置AppBar上文本的样式
          style: new TextStyle(color: Colors.white),
        ),
        centerTitle:true,
      ),

      body: new ListView.builder(
        itemCount: nameArr.length,
        itemBuilder:(BuildContext context, int index) {
          return getRow(index);
        },
        padding: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 10.0),
      ),
    );
  }

  Widget getRow(int i) {
    return GestureDetector(
      child: Padding(
        padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
        child: new Card(
          child: new Container(
            padding: EdgeInsets.all(10.0),
            child: new ListTile(
                title: new Text(nameArr[i],
                    style: new TextStyle(
                        fontSize: 17.0, color: const Color(0xFF63CA6C))),
                subtitle: new Text("2018年08月14日",
                    style:
                    new TextStyle(fontSize: 12.0, color: Colors.black26)),
                trailing: new Icon(
                  Icons.keyboard_arrow_right,
                  color: Colors.grey,
                )),
          ),
        ),
      ),
      onTap: () {
        setState(() {
//          Navigator.of(context).pushNamed('/containerApp');
          Navigator.of(context).push(
              new MaterialPageRoute(builder: (context) => new JNContainer()
              )
          );
//        nameArr.remove('label');
//        nameArr.replaceRange(i, i + 1, ['1']);
          print('row $i 被点击了');
        });
      },
    );
  }
}