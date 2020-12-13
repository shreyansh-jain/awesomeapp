import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: 'Awesome App', home: HomePage()));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Flutter App')),
        body: Center(
            child: Container(
                padding: const EdgeInsets.all(8),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey[400],
                          blurRadius: 5,
                          spreadRadius: 0,
                          offset: Offset(2.0, 5.0))
                    ],
                    color: Colors.yellow,
                    gradient:
                        LinearGradient(colors: [Colors.yellow, Colors.red])),
                width: 100,
                height: 100,
                child: Text('I am a box',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    )))));
  }
}
