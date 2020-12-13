import 'package:awesomeapp/pages/homepage.dart';
import 'package:flutter/material.dart';
import 'package:awesomeapp/pages/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:awesomeapp/utils/Constants.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Constants.prefs = await SharedPreferences.getInstance();

  runApp(MaterialApp(
      // debugShowCheckedModeBanner: false,
      title: 'Awesome App',
      home: Constants.prefs.getBool("loggedIn") == true
          ? HomePage()
          : LoginPage(),
      theme: ThemeData(primarySwatch: Colors.purple),
      routes: {
        '/login': (context) => LoginPage(),
        '/home': (context) => HomePage(),
      }));
}
