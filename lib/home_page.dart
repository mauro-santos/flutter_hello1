import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterhello1/pages/hello_page1.dart';
import 'package:flutterhello1/pages/hello_page2.dart';
import 'package:flutterhello1/pages/hello_page3.dart';
import 'package:flutterhello1/utils/nav.dart';
import 'package:flutterhello1/widgets/blue_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hello Flutter",
        ),
        centerTitle: true,
      ),
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _text(),
          _pageView(),
          _buttons(context),
        ],
      ),
    );
  }

  Container _pageView() {
    return Container(
      height: 300,
      margin: EdgeInsets.only(top: 20, bottom: 20),
      child: PageView(
        children: <Widget>[
          _img("assets/images/dog1.png"),
          _img("assets/images/dog2.png"),
          _img("assets/images/dog3.png"),
          _img("assets/images/dog4.png"),
          _img("assets/images/dog5.png"),
        ],
      ),
    );
  }

  _buttons(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            BlueButton("ListView", onPressed: () => _onClickNavigator(context, HelloPage1())),
            BlueButton("Page 2", onPressed: () => _onClickNavigator(context, HelloPage2())),
            BlueButton("Page 3", onPressed: () => _onClickNavigator(context, HelloPage3())),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            BlueButton("Snack", onPressed: _onClickSnack),
            BlueButton("Dialog", onPressed: _onClickDialog),
            BlueButton("Toast", onPressed: _onClickToast),
          ],
        ),
      ],
    );
  }

  void _onClickNavigator(BuildContext context, Widget page) async {
    String s = await push(context, page);

    print(">> ${s.toUpperCase()}");
  }

  _onClickSnack() {
    print("Clique em Snack!");
  }

  _onClickDialog() {
    print("Clique em Dialog!");
  }

  _onClickToast() {
    print("Clique em Toast!");
  }

  _listImg() {
    return ListView(
      children: <Widget>[
        _img("assets/images/dog1.png"),
        _img("assets/images/dog2.png"),
        _img("assets/images/dog3.png"),
        _img("assets/images/dog4.png"),
        _img("assets/images/dog5.png"),
      ],
    );
  }

  _img(String img) {
    return Image.asset(
      img,
      fit: BoxFit.cover,
    );
  }

  _text() {
    return Text(
      "Hello World",
      style: TextStyle(
        fontSize: 30,
        color: Colors.blue,
        fontWeight: FontWeight.bold,
        fontStyle: FontStyle.italic,
        decoration: TextDecoration.underline,
        decorationColor: Colors.red,
        decorationStyle: TextDecorationStyle.double,
      ),
    );
  }
}
