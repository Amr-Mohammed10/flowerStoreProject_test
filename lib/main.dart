import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:project/pages/login_page.dart';
import 'package:project/theme/theme_helper.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:firebase_core/firebase_core.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  Color _primaryColor = HexColor('#d10422');
  Color _accentColor = HexColor('#fa0223');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project "Flower Store" ',
      theme: ThemeData(
        primaryColor: _primaryColor,
        accentColor: _accentColor,
        scaffoldBackgroundColor: Colors.grey.shade100,
        primarySwatch: Colors.grey,
      ),
      home: LoginPage(),
    );
  }
}