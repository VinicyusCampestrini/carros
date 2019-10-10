
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:novoprojetoflutter/pages/login/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.purple,
          brightness: Brightness.light,
          scaffoldBackgroundColor: Colors.white
      ),
      home: LoginPage(
      ),
    );
  }
}
