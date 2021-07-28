import 'package:flutter/material.dart';
import 'package:flutter_session/secondScreen.dart';
import 'package:flutter_session/thirdScreen.dart';
import 'package:google_fonts/google_fonts.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // y axis
            crossAxisAlignment: CrossAxisAlignment.center, // x axis
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                child: Image.asset(
                  'assets/totoro.jpg',
                  height: 300,
                  width: 300,
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(30, 20, 30, 20),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: 'Enter Email', labelText: 'a@gmail.com'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Enter Password',
                  ),
                ),
              ),
              // Icon(Icons.home),
              // Icon(
              //   Icons.person,
              //   color: Colors.blue,
              //   size: 100,
              // ),
              // RaisedButton(
              //   onPressed: null,
              //   elevation: 5,
              //   child: Text('Login'),
              // ),
              FlatButton(
                color: Colors.green,
                child: Row(
                  children: [
                    Text('Login '),
                    Icon(Icons.login),
                  ],
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ThirdScreen()));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
