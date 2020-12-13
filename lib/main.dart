import 'package:awesomeapp/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:awesomeapp/pages/login_page.dart';

void main() {
  runApp(MaterialApp(
      title: 'Awesome App',
      home: LoginPage(),
      theme: ThemeData(primarySwatch: Colors.purple),
      routes: {
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage(),
      }));
}
