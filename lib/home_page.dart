import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      body: _body(),
    );
  }

  _body() {
    return Container(
      color: Colors.white,
      //child: Center(
      //child: SizedBox.expand(
      child: Center(
        child: _button(),
      ),
    );
  }

  _button() {
    return RaisedButton(
      color: Colors.blue,
      child: Text(
        "OK",
        style: TextStyle(
          color: Colors.white,
          fontSize: 30,
        ),
      ),
      //onPressed: () => _onClickOk(),
      onPressed: () {
        _onClickOk();
      },
    );
  }

  void _onClickOk() {
    print("Clicou no botão!");
  }

  _listImg() {
    return ListView(
      children: <Widget>[
        _img(),
        _img(),
        _img(),
      ],
    );
  }

  _img() {
    /*
    return Image.network(
      //"https://statig1.akamaized.net/bancodeimagens/bm/s7/6b/bms76blg2zaea6p7625cszwjp.jpg",
      "https://tudosobrecachorros.com.br/wp-content/uploads/2013/02/pastor_alemao_2.jpg",
    );
    */
    return Image.asset(
      "assets/images/dog5.png",
      //width: 300,
      //height: 300,
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
