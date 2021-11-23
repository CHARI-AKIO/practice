import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class sub2App extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp();
  }
}

class sub2Page extends StatefulWidget{
  @override
  _Sub2PageState createState() => _Sub2PageState();
}

class _Sub2PageState extends State<sub2Page>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Title(
          title: 'Sub2Buttons',
          color:Colors.black,
          child: CupertinoTextSelectionToolbarButton.text(text: "text")
        ),
      ),
      body: Row(
        children: [
          Center(
            child: ElevatedButton(
                onPressed: (){
                  //TODO:ボタンを押したときの処理をここに記述
                },
                child: Text('ElevatedButton')),
          ),
          Center(
            child: CupertinoButton(child: Text('CupertinoButton'),
                onPressed: (){
                  //TODO:ボタンを押したときの処理をここに記述
                }),
          )
        ],
      ),
    );
  }
}