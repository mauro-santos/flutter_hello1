import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.blue
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello Flutter"),
        ),
        body: Container(
          color: Colors.white,
        ),
        drawer:  Container(
          color: Colors.yellow,
          width: 300,
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){}),
      )
    );
  }
}
