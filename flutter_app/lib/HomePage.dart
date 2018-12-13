import 'package:flutter/material.dart';
import 'Mine.dart';
import 'PersonCenter.dart';
import 'package:flutter_app/News.dart';
import 'Tab2.dart';
import 'Tab3.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new _HomePage();
  }
}

class _HomePage extends State<HomePage> with SingleTickerProviderStateMixin {
  TabController _controller;
  final List<Tab> list = <Tab>[
    new Tab(
      text: 'Home',
      icon: new Icon(Icons.home),
    ), //icon和text的显示顺序已经内定，如需自定义，到child属性里面加吧
    new Tab(
      icon: new Icon(Icons.history),
      text: 'History',
    ),
    new Tab(
      icon: new Icon(Icons.book),
      text: 'Book',
    ),
  ];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = new TabController(length: list.length, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
        title: Text("yongxing"),
        backgroundColor: Colors.redAccent,
      ),
      drawer: new Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("yongxing"),
              accountEmail: Text("yongxingg1221@gmail.com"),
              currentAccountPicture: new GestureDetector(
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://upload.jianshu.io/users/upload_avatars/7700793/dbcf94ba-9e63-4fcf-aa77-361644dd5a87?imageMogr2/auto-orient/strip|imageView2/1/w/240/h/240"),
                ),
                onTap: () => print("other User"),
              ),
              otherAccountsPictures: <Widget>[
                new GestureDetector(
                  //手势探测器，可以识别各种手势，这里只用到了onTap
                  onTap: () => print('other user'), //暂且先打印一下信息吧，以后再添加跳转页面的逻辑
                  child: new CircleAvatar(
                    backgroundImage: new NetworkImage(
                        'https://upload.jianshu.io/users/upload_avatars/10878817/240ab127-e41b-496b-80d6-fc6c0c99f291?imageMogr2/auto-orient/strip|imageView2/1/w/240/h/240'),
                  ),
                ),
                new GestureDetector(
                  onTap: () => print('other user'),
                  child: new CircleAvatar(
                    backgroundImage: new NetworkImage(
                        'https://upload.jianshu.io/users/upload_avatars/8346438/e3e45f12-b3c2-45a1-95ac-a608fa3b8960?imageMogr2/auto-orient/strip|imageView2/1/w/240/h/240'),
                  ),
                ),
              ],
            ),
            ListTile(
              title: new Text("今日头条"),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Scaffold.of(context)
                    .showSnackBar(new SnackBar(content: new Text("ashkaha")));
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) =>
                        new PersonCenter("dality news")));
              },
            ),
            new Divider(),
            ListTile(
              title: new Text("今日头条"),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: new Text("今日头条"),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
            ListTile(
              title: new Text("个人中心"),
              trailing: new Icon(Icons.arrow_right),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) =>
                        new PersonCenter("dality news")));
              },
            )
          ],
        ),
      ),
      body: TabBarView(
        children: [
          new News(),
          new Tab2(),
          new Tab3()
        ],
        controller: _controller,
      ),
      bottomNavigationBar: Material(
        color: Colors.blue,
        child: TabBar(
          tabs: list,
          controller: _controller,
          indicatorColor: Colors.green,
        ),
      ),
    );
  }
}
