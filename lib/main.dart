import 'dart:html';
import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:practice/pages/home.dart';

void main() {
  runApp(MyApp());
}
//  （2） アプリケーションを定義
class MyApp extends StatelessWidget {
  // （3） アプリケーション全体の作成
  Widget build(BuildContext context) {
    return MaterialApp(
      // （4） 初期画面のウィジェット
      // home: HomePage(  ),
      initialRoute: '/',
      routes: {
        '/':(context) => HomePage(),
        '/second':(context) => sub1Page()
      },
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _counter = 1;
  static const List<Shadow> a_shadow = <Shadow>[
    Shadow(
        offset: Offset(5.0, 5.0),
        blurRadius: 8,
        color: Color.fromARGB(255, 255, 0, 0)
    )
  ];

  void incrementCounter() {
    setState((){
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //略
        title:const Text('Hello',
          style:TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      body:Row(
        children: [
          Column(
            children: [
              ElevatedButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/second');
                    // Navigator.push(context,MaterialPageRoute(
                    //   settings:const RouteSettings(name: '/hoge'),
                    //   builder: (context) => sub1App()
                  },
                  child: Text('This Button'))

            ],
          ),
          Text('Hello',
              style:TextStyle(
                fontSize: 20,
                shadows: a_shadow,
              )
          ),
          Text('Guys')
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: incrementCounter,
      ),
    );
  }
}
