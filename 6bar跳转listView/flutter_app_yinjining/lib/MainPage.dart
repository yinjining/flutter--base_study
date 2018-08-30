import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

import 'ui_setting/HomePage.dart';
import 'layout_setting/BaseLayout.dart';
import 'gestures_setting/SimpleGestures.dart';
import 'animation/SimpleAnimation.dart';


class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new MainPageWidget());
  }
}

class MainPageWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new MainPageState();
  }
}


class MainPageState extends State<MainPageWidget> {
  int _tabIndex = 0;
  var tabImages;
  var appBarTitles = ['首页', '路由', '占个位', '我的'];

  /*
   * 根据image路径获取图片
   * 这个图片的路径需要在 pubspec.yaml 中去定义
   */
  Image getTabImage(path) {
    return new Image.asset(path, width: 20.0, height: 20.0);
  }

  /*
   * 根据索引获得对应的normal或是press的icon
   */
  Image getTabIcon(int curIndex) {
    if (curIndex == _tabIndex) {
      return tabImages[curIndex][1];
    }
    return tabImages[curIndex][0];
  }
  /*
   * 获取bottomTab的颜色和文字
   */
  Text getTabTitle(int curIndex) {
    if (curIndex == _tabIndex) {
      return new Text(appBarTitles[curIndex],
          style: new TextStyle(color: const Color(0xff63ca6c)));
    } else {
      return new Text(appBarTitles[curIndex],
          style: new TextStyle(color: const Color(0xff888888)));
    }
  }

  /*
   * 存储的四个页面，和Fragment一样
   */
  var _bodys;

  void initData() {
    /*
      bottom的按压图片
     */
    tabImages = [
      [
        getTabImage('images/ic_home_normal.png'),
        getTabImage('images/ic_home_press.png')
      ],
      [
        getTabImage('images/ic_layout_normal.png'),
        getTabImage('images/ic_layout_press.png')
      ],
      [
        getTabImage('images/ic_gestures_normal.png'),
        getTabImage('images/ic_gestures_press.png')
      ],
      [
        getTabImage('images/ic_animation_normal.png'),
        getTabImage('images/ic_animation_press.png')
      ]
    ];
    _bodys = [
      new HomePage(),
      new BaseLayout(),
      new SimpleGestures(),
      new SimpleAnimation()
    ];
  }

  @override
  Widget build(BuildContext context) {
    //获取数据
    initData();

    // TODO: implement build
    return Scaffold(
//      appBar: new AppBar(
//        title: new Text("主页"),
//      ),
      body: _bodys[_tabIndex],
      bottomNavigationBar: new BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(
              icon: getTabIcon(0), title: getTabTitle(0)),
          new BottomNavigationBarItem(
              icon: getTabIcon(1), title: getTabTitle(1)),
          new BottomNavigationBarItem(
              icon: getTabIcon(2), title: getTabTitle(2)),
          new BottomNavigationBarItem(
              icon: getTabIcon(3), title: getTabTitle(3)),
        ],
//        //设置显示的模式
        type: BottomNavigationBarType.fixed,
        //设置当前的索引
        currentIndex: _tabIndex,
        //tabBottom的点击监听
        onTap: (index) {
          setState(() {
            _tabIndex = index;
          });
        },
      ),
    );
  }
}