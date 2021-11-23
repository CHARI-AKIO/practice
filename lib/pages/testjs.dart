
import 'package:js/js.dart';
import 'package:flutter/material.dart';
import 'package:practice/functions/calljs.dart';

class js extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp();
  }
}

class jsPage extends StatefulWidget{
  @override
  _jsPageState createState() => _jsPageState();
}

class _jsPageState extends State<jsPage>{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
      appBar:AppBar(
        title: Title(color: Colors.black, child: Text("Flutter with js")),
      ),
    body: Row(
      children: [
        Center(
          child: Column(
            children: [
              Center(
                child: ElevatedButton(
                  onPressed: (){
                    calltest();
                  },
                  child: Text('link Javascript'),
                ),
              )
            ],
          ),
        )
      ],
    ),
    );
  }
}