import 'package:flutter/material.dart';

class HelloListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "ListView",
        ),
        centerTitle: true,
      ),
      body: _body(),
    );
  }

  _body() {
    List<Image> imgs = [
      _img("assets/images/dog1.png"),
      _img("assets/images/dog2.png"),
      _img("assets/images/dog3.png"),
      _img("assets/images/dog4.png"),
      _img("assets/images/dog5.png"),
    ];

    return ListView(
      itemExtent: 350, // Aplicar a mesma dimensão de altura para todos os itens do lista.
      children: imgs,
    );
  }

  Image _img(String img) {
    return Image.asset(
      img,
      fit: BoxFit.cover,
    );
  }
}
