import 'package:flutter/material.dart';
import 'package:awesomeapp/bg_image.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Login Page')),
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            BgImage(),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                    child: Card(
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Form(
                          child: Column(
                            children: <Widget>[
                              TextFormField(
                                decoration: InputDecoration(
                                    hintText: "Enter Username",
                                    labelText: "Username"),
                              ),
                              SizedBox(height: 20),
                              TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    hintText: "Enter Password",
                                    labelText: "Password"),
                              ),
                              SizedBox(height: 20),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: RaisedButton(
                                  child: Text("SignIn"),
                                  onPressed: () {
                                    Navigator.pushNamed(context, '/home');
                                  },
                                  color: Colors.orange,
                                  textColor: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )),
              ),
            )
          ],
        ));
  }
}
