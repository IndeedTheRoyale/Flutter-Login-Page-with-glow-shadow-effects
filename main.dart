import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<MyApp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red[200],
        resizeToAvoidBottomInset: false,
        body: Padding(
            padding: EdgeInsets.all(10),
            child: ListView(
              children: <Widget>[
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'Welcome Back ',
                      style: TextStyle(
                        color: Colors.yellow,
                        fontWeight: FontWeight.w500,
                        fontSize: 40,
                        shadows: [
                          Shadow(
                            blurRadius: 5.0,
                            color: Colors.black,
                            offset: Offset(3.0, 3.0),
                          ),
                        ],
                      ),
                    )),
                Container(
                  height: 70,
                ),
                Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Text(
                      'LOG IN',
                      style: TextStyle(fontSize: 20),
                    )),
                Container(
                  height: 50.0,
                  decoration: BoxDecoration(color: Colors.white, shape: BoxShape.rectangle, boxShadow: [
                    BoxShadow(
                      color: Colors.red,
                      blurRadius: 5.0,
                      spreadRadius: 2.0,
                    ),
                  ]),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'User Name',
                    ),
                  ),
                ),
                Container(
                  height: 20,
                ),
                Container(
                  height: 50,
                  decoration: BoxDecoration(color: Colors.white, shape: BoxShape.rectangle, boxShadow: [
                    BoxShadow(
                      color: Colors.blue,
                      blurRadius: 5.0,
                      spreadRadius: 2.0,
                    ),
                  ]),
                  child: TextField(
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ),
                FlatButton(
                  onPressed: () {
                    //forgot password screen
                  },
                  textColor: Colors.black,
                  child: Text(
                    'Forgot Password !',
                    style: TextStyle(
                      color: Colors.yellow,
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      shadows: [
                        Shadow(
                          blurRadius: 5.0,
                          color: Colors.black,
                          offset: Offset(3.0, 3.0),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 20,
                ),
                Container(
                    height: 50,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: RaisedButton(
                      textColor: Colors.white,
                      color: Colors.blue,
                      child: Text('Login'),
                      onPressed: () {
                        print(nameController.text);
                        print(passwordController.text);
                      },
                    )),
                Container(
                    child: Row(
                  children: <Widget>[
                    Text('Does not have account?'),
                    FlatButton(
                      textColor: Colors.white,
                      child: Text(
                        'Sign in',
                        style: TextStyle(fontSize: 20),
                      ),
                      onPressed: () {
                        //signup screen
                      },
                    )
                  ],
                  mainAxisAlignment: MainAxisAlignment.center,
                ))
              ],
            )));
  }
}
