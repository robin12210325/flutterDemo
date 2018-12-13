import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_app/Home.dart';

class SpashPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new SpashPageStates();
  }
}

class SpashPageStates extends State<SpashPage> {
  Timer _t;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _t = new Timer(const Duration(microseconds: 6000), () {
      try {
        Navigator.of(context).pushAndRemoveUntil(
            new MaterialPageRoute(builder: (BuildContext context) {
          return new HomePage();
        }), (Route route) => route == null);
      } catch (e) {}
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _t.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    /*return new MaterialApp(
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
          child: new Text("欢迎页"),
        ),
      ),
    );*/
    return new Material(
      color: new Color.fromARGB(255, 0, 215, 198),
      child: new Padding(
        padding: const EdgeInsets.only(
          top: 150.0,
        ),
        child: new Column(
          children: <Widget>[
            new Text("欢迎页",
              style: new TextStyle(color: Colors.white,
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}
