import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('计数器'),
        ),
        body: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //Stack结合align实现布局：
    return HomePage();
  }
}

//自定义有状态组件：
class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int countNum = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(height: 200),
        Chip(label: Text('${this.countNum}')),
        SizedBox(height: 20),
        RaisedButton(
          child: Text('按钮'),
          onPressed: () {
            setState(() {
              //只有有状态的组件里面才有
              this.countNum++;
            });
          },
        )
      ],
    );
  }
}
