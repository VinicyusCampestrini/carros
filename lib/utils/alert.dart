import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

alert(BuildContext context, String msg) {
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return WillPopScope(
          onWillPop: () async => false,
          child: AlertDialog(
            title: Text("Carros"),
            content: Text(msg),
            actions: <Widget>[
              FlatButton(
                child: Text("ok"),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        );
      });
}
