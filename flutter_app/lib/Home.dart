import 'package:flutter/material.dart';
class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new HomePageStates();
  }
}
class HomePageStates extends State<HomePage>{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "主页",
      home: new Scaffold(
        appBar: new AppBar(
          leading: new Container(
            child: new Center(
              child: new Text("返回"),
            ),
          ),
          centerTitle: true,
        ),
        body: new Center(
          child: new Text("中心内容"),
        ),
      ),
    );
  }
}