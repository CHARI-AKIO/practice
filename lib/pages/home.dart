import 'package:flutter/material.dart';
import 'package:practice/main.dart';

void sub1() {
  runApp(sub1App());
}

class sub1App extends StatelessWidget{
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: sub1Page(),
    );
  }
}

class sub1Page extends StatefulWidget {
  @override
  _Sub1PageState createState() => _Sub1PageState();
}

class _Sub1PageState extends State<sub1Page> {
  String Hello = "HelloWorld";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Title(color: Colors.black, child: Text('SecondPage')),
      ),
      body: Row(
        children: [
          Column(
            children: const [
              Text("Text1-1"),
              Text("Text1-2"),
              Text("Text1-3"),
              Text("Text1-4"),
            ],
          ),
          Column(
            children: const [
              Text("Text2-1"),
              Text("Text2-2"),
              Text("Text2-3"),
              Text("Text2-4"),
            ],
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
    throw UnimplementedError();
  }


}