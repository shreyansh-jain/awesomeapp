import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(title: 'Awesome App', home: HomePage()));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Flutter App')),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 200,
              color: Colors.black,
              height: 400,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Container(
                      //   padding: const EdgeInsets.all(8),
                      //   width: 100,
                      //   height: 100,
                      //   color: Colors.red,
                      // ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        width: 100,
                        height: 100,
                        color: Colors.green,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        width: 100,
                        height: 100,
                        color: Colors.yellow,
                      ),
                      Container(
                        padding: const EdgeInsets.all(8),
                        width: 100,
                        height: 100,
                        color: Colors.blue,
                      )
                    ]),
              ),
            ),
          ),
        ));
  }
}
