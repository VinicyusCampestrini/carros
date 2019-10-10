import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Carros")),
      ),
      body: _bady(),
    );
  }

  _bady() {
    return Center(
      child: Text(
        "home",
        style: TextStyle(
        fontSize: 22,
      ),),
    );
  }
}
